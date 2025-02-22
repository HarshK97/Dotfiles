const API_KEY = "AIzaSyAE1ac3Z9jwLsyz4j9BoOcFGlNsXItrhu8"; // Replace with your API key
const API_URL = `https://safebrowsing.googleapis.com/v4/threatMatches:find?key=${API_KEY}`;

async function checkURL(url) {
  const requestBody = {
    client: { clientId: "yourcompany", clientVersion: "1.0" },
    threatInfo: {
      threatTypes: ["MALWARE", "SOCIAL_ENGINEERING"],
      platformTypes: ["ANY_PLATFORM"],
      threatEntryTypes: ["URL"],
      threatEntries: [{ url }],
    },
  };

  try {
    const response = await fetch(API_URL, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(requestBody),
    });

    const data = await response.json();
    return data.matches ? true : false;
  } catch (error) {
    console.error("Safe Browsing API error:", error);
    return false;
  }
}

// 🚨 Automatically check tab updates
chrome.tabs.onUpdated.addListener((tabId, changeInfo, tab) => {
  if (changeInfo.status === "complete" && tab.url) {
    checkURL(tab.url).then((isPhishing) => {
      if (isPhishing) {
        chrome.scripting.executeScript({
          target: { tabId },
          func: () => {
            if (
              confirm(
                "⚠️ WARNING: This site may be a phishing website! Do you want to leave?",
              )
            ) {
              window.location.href = "https://www.google.com"; // Redirect to a safe site
            }
          },
        });
      }
    });
  }
});

// ✅ Manual check when popup is used
chrome.runtime.onMessage.addListener((request, sender, sendResponse) => {
  if (request.action === "checkPhishing") {
    checkURL(request.url).then((isPhishing) => {
      sendResponse({ isPhishing });
    });
    return true; // Keep the message channel open
  }
});
