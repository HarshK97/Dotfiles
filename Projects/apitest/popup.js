document.getElementById("checkPhishing").addEventListener("click", async () => {
  const [tab] = await chrome.tabs.query({ active: true, currentWindow: true });
  if (!tab || !tab.url) return;

  chrome.runtime.sendMessage(
    { action: "checkPhishing", url: tab.url },
    (response) => {
      const resultElement = document.getElementById("result");
      const isPhishing = response.isPhishing;

      resultElement.innerText = isPhishing
        ? "🚨 This site is unsafe!"
        : "✅ This site is safe!";

      resultElement.className = `mt-3 fw-bold ${isPhishing ? "text-danger" : "text-success"}`;
    },
  );
});
