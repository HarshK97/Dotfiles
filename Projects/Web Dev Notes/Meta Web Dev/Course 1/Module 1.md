# Basics of How the Internet Works 
### 2025-02-10
## 1. Introduction
- The Internet allows instant access to information
- Users search online and receive responses quickly
- This is possible due to interconnected networks
## 2. How Devices Connect
- Devices connect via **wired or wireless networks**.
- A **network** is formed when two or more devices communicate
- Multiple devices can connect, but direct connections between all devices becomes complex
## 3. Role of Network Switches
- **Network switches** help devices communicate efficiently
- These switches connect multiple devices and other network switches.
- This forms an **interconnected network**, which is essentially the **Internet**
## 4. Client-Server Model
- The Internet is based on the **client-server model**:
	- **Servers**: Provide websites,video streaming, and other online services.
	- **Clients**: Devices that request and use these services
## 5. Global Internet Connectivity
- The Internet connects the entire world.
- Video calls and other data travel through **undersea cables**.
- These cables handle **massive amounts of data per seconds**.
## 6. Conclusion
- The Internet is built on **complex technical systems**.
- Key components: **Devices, Networks, Switches, Servers, Undersea Cables**.
- Understanding these basics gives a clearer picture of how the Internet works.

# Understanding Servers and Web Servers
### 2025-02-10
## 1. What is a Server?
- A **server** is a computer that runs applications and services (e.g., websites, messaging).
- Called a **server** because it provides a service to a **client** (another computer/user).
- Typically stored in **data centers** with **hundreds or thousands of servers**.
## 2. Data Centers
- Data centers ensure servers have: 
	- **Continuous power**
	- **Stable internet connection**
	- **Cooling systems (24/7 operation)**
- Located **worldwide** to provide faster content delivery.
## 3. Server Hardware vs Software
- **Server Hardware**: Physical components of a server, designed for specific tasks.
	- Example: **Storage server** => More hard drive space
	- Example: **Computing server** => Powerful processor & more memory
- **Server Software**: Code running on the hardware.
- Hardware = Physical, hard to change
- Software = Code, easy to modify
## 4. What is a Web Server?
- A **web server** is a type of server used for:
	- **Website storage & administration**
	- **Data storage & security**
	- **Email management**
- **Handles web requests**: 
- When you type a website name in your browser, the **web server** sends back the website content.
- Web servers handle **thousands of requests per seconds**.
## 5. Summary
- A **server** provides services to **clients** and runs in **data centers**.
- Servers consist of:
	- **Hardware** (physical components)
	- **Software** (code)
- **Web servers** store websites and handle **web requests** from users.

# Understanding Webpages and Websites
### 2025-02-10
## 1. Webpages vs Websites
- A **webpage** is a document that displays images, text, videos, and other content in a web browser.
- A **website** is a collection of webpages linked together.
- Example:
	- A homepage with links to articles => Clicking a link opens a new webpage.
	- If webpages share a similar address, they belong to the same website.
	- Some links can also lead to other websites (e.g., search results).
## 2. The Growing Internet
- Thousands of websites are launched every day.
- In one week, the number of new webpages equals the number of stones in the Great Pyramid of Gia (~2.3 millions).
- Downloading all webpages would take ~3 million years at current speeds.
## 3. The Core Technologies of a Webpage
- A webpage relies on three main technologies:
	- **HTML (Hypertext Markup Language)**
		- Defines the structure of a webpage.
		- Uses **markup tags** to describe elements like headings, paragraphs, images, and multimedia (audio, video).
	- **CSS (Cascading Style Sheets)**
		- Adds visual enhancements (colors, layout, styling).
		- Works by modifying HTML elements to control apperances.
		- Analog: **HTML = Hair, CSS = Hair color and style**.
	- **JavaScript**
		- A programming language built into web browsers.
		- Adds interactivity, data processing, and dynamic content.
		- Example: Form validation, real-time updates on video streaming sites.
		- Analogy: **HTML = Building, CSS = Decoration, JavaScript = Business & Services**.
## 4. How a Webpage is Displayed
- The web server sends a webpage copy to your browser.
- The browser processes each line of code **sequentially**.
- It constructs the **visual representation** of the page.
- This process is called **page rendering**.
## 5. Summary
- **Webpages** are individual documents; **websites** are collections of webpages.
- The three core technologies of a webpages:
	- **HTML** (structure)
	- **CSS** (styling)
	- **JavaScript** (interactivity)
- The browser **renders** a webpage by processing code line by line.
- Thousands of new websites are created every day, expanding the internet continuously.

# Understanding Web Browsers and the Request-Response Cycle
### 2025-02-10
## 1. What is a Web Browser?
- A **web browser** is a software application used to browse the World Wide Web.
- It sends **requests** to a web server and receives **responses** containing content.
- Example: Google Chrome. Firefox, Edge, Safari.
## 2. Components of a URL
- A URL (**Uniform Resource Locator**) consists of:
	- **Protocol** => `http://` or `https://` (Hypertext Transfer Protocol).
	- **Domain Name** => Name of the website (e.g., `/search`).
	- **File Path** => Path to a specific webpage (e.g., `/search`).
## 3. The Request-Response Cycle
- The browser and the server communicate using **HTTP (Hypertext Transfer Protocol)**.
- The process follows these steps:
	1. **User enters a URL** in the address bar.
	2. **Browser sends a request** over the network to a **web server**.
	3. **Web server processes the request** and retrieves data.
	4. **Server sends a response** back to the browser.
	5. **Browser renders** the webpage and displays it to the user.
## 4. Example: Web Search
- You open a web browser and type a search engine's domain name.
- Pressing **Enter** sends a request to the web server.
- The **web server** responds with the search engine's webpage.
- The request is sent to the web server, which processes it using a **database**.
- The request is sent to the web server, which processes it using a **database**.
- The server sends back a **response** with search results, maps, reviews, etc.
## 5. Applications of the Request-Response Cycle
- The request-response cycle is used for many online activities, such as:
	- **Chatting** with friends.
	- **Streaming** movies.
	- **Sharing files** at work.
## 6. Summary
- A **web browser** is an application that requests and displays web content.
- The **request-response cycle** involves sending requests and receiving responses.
- Web servers retrieve and send the required data.
- Every time you browse the web, think about the steps happening behind the scenes!


# Understanding Web Hosting
### 2025-02-10
## 1. What is Web Hosting?
- **Web hosting** is a service that allows you to store your website on a **hosting company's web server** instead of owning a **data center**.
- It provides **stable and secure storage** for individuals and businesses.
## 2. Types of Web Hosting
#### 2.1 Shared Hosting
- **Cheapest** form of web hosting.
- Multiple websites share the **same server resources** (CPU, memory, bandwidth).
- Can **slow down performance** due to shared resources.
- **Best for:** Small websites or personal projects.
#### 2.2 Virtual Private Server (VPS)
- Provides **dedicated resources** (CPU, memory, bandwidth) in a **virtualized environment**.
- Multiple VPS instances run on the same physical server but **don't interfere** with each other.
- **More expensive** than shared hosting but offers **better performance**.
- **Best for:** Medium-sized websites or applications needing **consistent performance**.
#### 2.3 Dedicated Hosting 
- A **physical server** dedicated **entirely to you**
- **All resources(CPU, memory, bandwidth) are exclusive** to your website.
- **Most expensive** option but offers **maximum control and performance**.
- **Best for:** Large websites with **high traffic**.
#### 2.4 Cloud 
- Uses **multiple physical and virtual servers** to host a website.
- If one server **fails**, another takes over, keeping the site **online**.
- **Scalable** => Pay only for **resources used** (e.g., bandwidth, CPU usage).
- **Best for:** Websites that **need scalability** and **high availability** (e.g., major web applications).
## 3. Key Takeaways
- **Shared Hosting** => Affordable but limited performance.
- **VPS Hosting** => More power and stability at a higher cost.
- **Dedicated Hosting** => Full control but expensive.
- **Cloud Hosting** => Flexible and scalable, but cost depends on usage.

# Understanding IP Addresses and Data Transmission
### 2025-02-11
## 1. Introduction
- **Email** is a common communication method today, but before that, we relied on the **postal system**.
- Surprisingly, there are **parallels** between how postal mail and **computer networks** send and receive data.
- This is made possible through **IP addresses** (Internet Protocol addresses).
## 2. What Are IP Addresses?
- An **IP address** is like a **home address** for devices on the internet.
- It allows **packets of information** to be delivered correctly.
#### 2.1. Types of IP Addresses
- **IPv4 (Internet Protocol Version 4):**
	- Contains **four octets** separated by **dots** (.)
	- Example: `192.0.2.235`
- **IPv6 (Internet Protocol Version 6):**
	- Contains **eight groups** of **hexadecimal digits** separated by **colons** (:)
	- Example: `4527:0a00:1567:0200:ff00:0042:8329`
## 3. How Data is Sent Over the Internet
- Data is sent as **IP packets** (also called **datagrams**).
- Each **IP packet** consists of:
	- **Header** => Contains source & destination IP addresses
	- **Payload** => Contains the actual **data** being transmitted
#### 3.1 Postal System Analogy
- Just like postal mail includes the **sender & recipient address**, IP packets include the **source & destination IP** in the **header**.
## 4. Issues With Data Transmission
- Just like in a **postal system**, network issues can occur:
	- **Packets arriving out of order**
	- **Packets getting lost** in transit
	- **Packets getting corrupted**
## 5. Protocols That Help Data Transmission
- To address these issues, IP packets **carry additional protocols**:
#### 5.1 TCP (Transmission Control Protocol)
- **Solves all issues** (order, corruption, lost packets).
- **Ensures reliable** delivery.
- **Slower** due to **error checking**.
- Used for **files, messages, web pages** (where accuracy matters).
#### 5.2. UDP (User Datagram Protocol)
- **Faster** but can **lose or reorder packets**.
- **Does not guarantee** perfect delivery.
- Used for **voice calls, video streaming, gaming** (where **Speed** is more important than **accuracy**).
## 6. Key Takeaways
- **IP addresses** allow computers to communicate like postal addresses.
- **Packets contain headers and payloads** for delivery.
- **TCP ensures reliability** but is slower.
- **UDP is faster** but may drip or reorder packets.

# Understanding HTTP and HTTPS
### 2025-02-11
## 1. Introduction
- Have you ever noticed the **lock icon** beside the URL in your browser?
- This means the **HTTPS** (secure HTTP) is being used.
- **HTTP (Hypertext Transfer Protocol)** is the **core protocol** of the web.
- It allows **browsers** to communicate with **web servers**. 
## 2. What is HTTP?
- **HTTP** is a request-response-based protocol.
- It is used to transfer web resources like **HTML, images, and stylesheets**.
- The browser (client) sends an **HTTP request**., and the web server responds with an **HTTP response**.
## 3. Structure of an HTTP Request
- An HTTP request consists of:
	1. **Method** - Defines the type of action to perform.
	2. **Path** - Indicates where the resource is stored.
	3. **Version** - The HTTP protocol version (e.g., 1.1 or 2.0).
	4. **Headers** - Additional metadata about the request.
	5. **Body** (optional) - Contains the data being sent (for some methods).
#### 3.1 HTTP Methods
- **GET** => Retrieve data from the server.
- **POST** => Send new data to the server.
- **PUT** => Update existing data on the server.
- **DELETE** => Remove a resource from the server.
#### 3.2. Example Path in a URL
- If requesting an image:
	- URL: `example.com/images/image.jpg`
- The **path** directs the request to the correct location.
## 4. Structure of an HTTP Response
- Similar to an HTTP request, a response includes:
	1. **Status Code** - Indicates if the request was successful.
	2. **Headers** - Additional details about the response.
	3. **Body** - The actual content (e.g., HTML, images).
## 5. HTTP Status Codes  
- Status codes are **three-digit numbers** (100-599) grouped by category:  

| Category           | Code Range | Description |
|-------------------|------------|--------------------------------|
| **Informational**  | 100-199    | Interim responses. Example: **100 Continue**. |
| **Success**        | 200-299    | Request completed successfully. Example: **200 OK**. |
| **Redirection**    | 300-399    | Resource moved. Example: **301 Moved Permanently**. |
| **Client Errors**  | 400-499    | Issues from the user's side. Example: **404 Not Found**. |
| **Server Errors**  | 500-599    | Issues from the server's side. Example: **500 Internal Server Error**. |
#### 5.1 Common HTTP Status Codes
- **200 OK** => Request was successful.
- **301 Moved Permanently** => Resource moved to a new URL.
- **302 Found** => Temporary redirection.
- **400 Bad Request** => Request had invalid syntax.
- **401 Unauthorized** => Authentication required.
- **403 Forbidden** => User does not have permission.
- **404 Not Found** => Resource does not exist.
- **500 Internal Server Error** => Generic server failure.
## 6. What is HTTPS?
- **HTTPS (Hypertext Transfer Protocol Secure)** is the **secure version** of HTTP.
- It **encrypts** data before sending it.
- Used to protect sensitive data (e.g., login info, credit card details).
#### 6.1. How HTTPS Works
- Encryption turns data into **secret code** before sending it.
- Only the intended recipient can **decrypt** the data.
- This ensures **privacy and security**.
- The **lock icon** in your browser means HTTPS is enabled.
## 7. Key takeaways
- **HTTP is the foundation** of web communication.
- **Requests contain methods, paths, headers, and sometimes body content**.
- **Responses contain status codes, headers, and data**.
- **Status codes indicate success, failure, or redirection**.
- **HTTPS secures data transmission using encryption**.

# Web Development : HTML, CSS, and JavaScript
### 2025-02-11
## 1. Introduction
- Every web page you visit is built using **three core technologies**: 
	- **HTML** => Structure and content
	- **CSS** => Styling and appearance
	- **JavaScript** => Interactivity and functionality
- These technologies work together to create web pages and applications.
## 2. Example 1: Digital Clock
### 2.1. HTML Structure
- Create a file called `clock.html`.
- It contains elements for **hours, minutes, and seconds**.
- Without styling, the display is just six zeros (`00:00:00`).
### 2.2. Adding CSS Styling
- A separate file called `styles.css` is referenced.
- It defines:
	- **Positioning, size, color, font type, and background**.
- After styling, the zeros are formatted into a **digital clock**.
### 2.3. Adding JavaScript for Functionality
- The HTML references a JavaScript file called `clock.js`.
- The browser loads and processes the file.
- The script updates the **hour, minute, and second** elements **every second**.
- With all three files linked, the **clock updates in real-time**.
## 3. Example 2: Video Player
### 3.1. HTML Structure
- A file called `videoplayer.html` contains
	- A **video element**.
	- A **Play button** below the video.
### 3.2. CSS for Styling
- The HTML references a **CSS file** for:
	- **Styling the video**.
	- **Styling the Play button**.
### 3.3. JavaScript for Interactivity
- The HTML references a JavaScript file called `videoplayer.js`.
- JavaScript handles **four key actions**:
	1. Registers a **click event listener** on the Play button.
	2. Checks the **current state** of the video.
	3. If the video is **stopped**, it:
		- **Starts playing** the video.
		- **Changes the button icon** to a stop icon.
	4. If the video is **playing**, it:
		- **Pauses the video**.
		- **Changes the button icon** back to a play icon.
- By default, the video is **stopped**.
- When the **Play button** is clicked:
	- The **video starts playing**.
	- The **button changes** to a stop icon.
- When clicked **again**;
	- The **video stops**.
	- The **button changes** back to a play icon.
## 4. Key Takeaways
- **HTML structures the content**.
- **CSS styles the page** (colors, fonts, layout).
- **JavaScript adds interactivity** (updates content, handles clicks).
- **Web pages work by linking these three files together**.

# Understanding Web Pages, Websites, and Web Applications
### 2025-02-12
## 1. Introduction
When using the Internet, you encounter **web pages, websites, and web applications**. But how do they differ? And as a developer, which one should you create?
## 2. What is a Web Page?
- A **web page** is a **single page** made with **HTML, CSS, and JavaScript**.
- It can display **text, images, videos, and other content** in a web browser.
- Example: A news article, a blog post, or a contact page.
## 3. What is a Website?
- A **website** is a **collection of web pages** linked under one **domain name**.
- Clicking a **hyperlink** moves the user between pages within the site.
- Example: 
	- An **encyclopedia website** where clicking an article leads to more related articles.
	- A **search engine** that links to various other websites.
## 4. What is a Web Application?
The difference between a **website** and a **web application** can be subtle.
### 4.1. Key Differences
- **Website** => More **informative**, static content (same for all users).
- **Web Application** => More **interactive**, dynamic content (changes based on user input).
### 4.2. Example: Food Ordering vs. Company Website
#### **Food Ordering Web Application**
1. You visit the **food ordering site**.
2. You **select items** form the menu and submit an **order**.
3. The site updates the content **based on your input** (user account, location, order status).
#### **Company Website**
1. You visit a **company's website**.
2. You view **static information**, about their services.
3. The same content is displayed to **all users**, with little interactivity.
## 5. Summary
- **Web Page** => A **single** page with content.
- **Website** => A **collection** of web pages under **one domain**.
- **Web Application** => A website with **dynamic, user-specific content**.

# Web Browser Developer Tools
### 2025-02-12
## 1. Introduction
Just like opening the hood of a car to check for issues, you can **inspect the front-end** of a website to debug problems.
## 2. Opening Developer Tools
Most modern browser provide **built-in developer tools** to inspect and debug web pages.
### How to Open Developer Tools
- **Chrome (Windows/Linux)** => Press **F12** or **Ctrl + Shift + I**.
- **Firefox (Windows/Linux)** => Press **F12 or Ctrl + Shift + C**.
## 3. Overview of Developer Tools Tabs
Once open, the **Developer Tools Panel** contains multiple tabs, each serving a difference purpose 
### **Control Tab** 
- Displays **JavaScript logs, errors, and warnings**.
- Useful for debugging scripts.
### **Sources Tab**
- Lists all **HTML, CSS, JavaScript, images, and videos** loaded on the page.
### **Network Tab**
- Shows details of **HTTP requests and responses**.
- Helps debug slow-loading pages of API calls.
### **Performance Tab**
- Monitors **browser activity over time**.
- Identifies slow-running **JavaScript functions**.
### **Memory Tab**
- Shows memory usage of different parts of the code.
- Helps optimize **resource-heavy applications**.
### **Elements Tab** (Most Used)
- Displays the **HTML structure** of the web page.
- Allows you to **inspect and modify CSS styles** in real-time.
## 4. Inspecting and Editing Elements
- Hovering over an element in the **Elements tab** highlights it on the page.
- On the right side, you can inspect applied **CSS styles**.
### **Fun Trick: Editing Live HTML**
1. **Double-click** any HTML element.
2. Modify the **text content** (e.g., change `"Chicken Burger"` to `"Turkey Burger"`).
3. Changes appear **instantly**, but they are **temporary** (reset when the page reloads).
## 5. Summary
- **Developer tools** help inspect, debug, and improve web pages.
- You can modify **HTML, CSS, and JavaScript** in real-time.
- Changes made are **local** and won't affect the server.
- Essential tools for **diagnosing performance issues** and **tracing network requests**.

# Frameworks Vs. Libraries
### 2025-02-12
## 1. Introduction
Software development can be **time-consuming**, but many common problems **already have solutions** in the form of **frameworks** and **libraries**.

Instead of reinventing the wheel, developers use:
**Frameworks** => Provide a structure for applications.
**Libraries** => Provide reusable code for specific functionality.

## 2. What is a Library?
A **library** is a collection of reusable code designed for a **specific** functionality.

- Example: Email validation
	- Email validation is complex due to **technical specifications**.
	- Instead of implementing it from scratch, developers use a **library** to handle it.
	- This saves time and reduces errors.
- **Key Features of Libraries**
	- Purpose-built for a **specific task**.
	- Developers have **full control** over how they use it.
	- Unopinionated - no restrictions on **how** the code is structured.
## 3. What is a Framework?
A **framework** provides a structured foundation for building an application.
- **Example**: Web Development
	- A **web framework** (e.g., Django, React, Angular) manages **HTTP requests & responses**.
	- The developer **writes custom logic**, and the framework **handles the rest**.
- **Key Features of Frameworks**
	- **Opinionated** - Enforces a **specific structure**.
	- Provide **built-in tools & best practices**.
	- Handles **common tasks** (e.g., routing, database connections).
	- Requires developers to **follow the framework's workflow**.
## 4. Libraries vs. Frameworks: The Key Difference
| Feature          | Library                             | Framework                                       |
| ---------------- | ----------------------------------- | ----------------------------------------------- |
| **Purpose**      | Specific functionality              | Overall structure for applications              |
| **Flexibility**  | Developer decides how to use it     | Developer must follow the framework’s structure |
| **Control**      | Full control over how it's used     | Control is dictated by the framework            |
| **Example**      | Lodash (JavaScript utility library) | React (Component-based UI framework)            |
| **Opinionated?** | ❌ No                                | ✅ Yes                                           |
|                  |                                     |                                                 |
## 5. How Libraries & Frameworks Work Together
Most **frameworks use multiple libraries** internally.
- Example: **React** (a UI framework) uses the **Axios library** for making HTTP requests.
- Developers can **add extra libraries** even if they are using a framework.
## 6. When to Use a Framework vs. a Library
**Use a Framework when:**
- You need a **structured approach**.
- You want **built-in best practices**.
- You are working on **large applications**.
**Use a Library when:**
- You need a **specific feature** (e.g., data formatting).
- You want **maximum flexibility** in your architecture.
- You prefer a **customized development workflow**.
## 7. Pros & Cons
### **Advantages of Frameworks**
Faster development with **prebuilt structures**.
Follows **best practices** by default.
Easier to maintain and scale.

### **Disadvantages of Frameworks**
Less flexibility - developer must **follow framework rules**.
May include **unnecessary features**, increasing complexity.
Changing a framework is **difficult** once development starts.

### **Advantages of Libraries**
**Highly flexible** => use only what you need.
**Easier to replace** when better alternatives are available.
Can be used **independently** or with other tools.

### **Disadvantages of Libraries**
Requires more setup & configuration.
Developers must handle **integration & compatibility** issues.
Lack of **opinionated structure** can lead to inconsistent code.

## 8. Conclusion
**Frameworks & libraries** both speed up development and reduce errors.
**Frameworks** provide a complete **structure**, while **libraries** offer **specific functionalities**.
Choosing the right one depends on your **project requirements** and **flexibility needs**.

# Understanding APIs in Web Development
### 2025-02-12
## 1. Introduction
Every day, you interact with **APIs** when using your phone to:
	Read the news
	Purchase goods & services
	Communicate over social media

But **how is all this information transferred?**
The answer lies in **APIs** - a powerful tool for developers.
## 2. What is an API?
**API** stands for **Application Programming Interface**.
It is a **set of functions & procedures** that allows application to:
- Access **features** of an OS, application, or service.
- Exchange **data** between different components or systems.
- Serve as a **bridge** (also called a **gateway or middleware**).
APIs are everywhere and serves **many purposes**.
## 3. Types of APIs in Web Development
### **1. Browser (Web) APIs**
These APIs extend the functionality of web browsers.

**Examples of Browser APIs**:
- **DOM API** => Represents the HTML document as a tree of nodes.
- **Geolocation API** => Retrieves the device's location.
- **Fetch API** => Fetches resources over the network.
- **Canvas API** => Enables 2D/3D graphics rendering.
- **History API** => Manages browser history.
- **Web Storage API** => Stores data on the client side.
### **2. RESTful APIs (REST APIs)**
**Most common APIs used in web development.**

**What is REST?**
- **REST** stands for **Representational State Transfer**.
- It follows **principles** to create **efficient, scalable** APIs.
- REST APIs interact with a **centralized database** to **send & receive data**.
- Commonly used in **web & mobile apps**.

**Common REST API Operations (HTTP Methods)**:

| Operation | HTTP Method | Description |
|-----------|------------|-------------|
| **Get Data** | GET | Retrieve data from the server. |
| **Create Data** | POST | Add new data to the server. |
| **Update Data** | PUT | Modify existing data. |
| **Delete Data** | DELETE | Remove data from the server. |
**How REST APIs Work**:
- APIs use **endpoints** (URLs) to specify **resources**.
- The **endpoint is built into the URL** when calling the API.
- The API processes the request and **returns a response**.
- Common response formats:
	- **Full web pages**
	- **JSON (JavaScript Object Notation)**

### **3. Sensor-Based APIs (IoT APIs)**
Used in **Internet of Things (IoT)** applications.
**Example of Sensor-Based APIs**:
- **Smart lights (Philips Hue)**
- **Node Bots (Hardware automation)**

These APIs allow physical **sensors** to exchange data.

## 4. Why APIs Matter for Web Developers
APIs **extend system capabilities**.
APIs **bridge different components**.
APIs **reduce development time** by providing **ready-to-use services**.

As a **web developer**, you will frequently work with **various APIs** to:
- Fetch & manage data.
- Enhance browser functionality.
- Interact with hardware sensors.

# Integrated Development Environment(IDE) 
### 2025-02-13
## What is an IDE?
- An **Integrated Development Environment (IDE)** is software for building applications.
- Similar to a text editor but designed specifically for writing code.
- Some IDEs are **language-specific**, while others support **multiple programming languages**.
## Common Features of an IDE:
1. Syntax Highlighting
	- **Improves readability** by highlighting keywords in different colors.
	- Help differentiate **keywords, variables, and other elements** in the code.
2. Error Highlighting
	- Works like **spell-check in a text document**.
	- Highlights **errors in the code**, such as missing symbols or incorrect syntax.
3. Autocomplete & IntelliSense
	- Suggests **keywords and functions** while typing, similar to phone text suggestions.
	- **IntelliSense** enhances autocomplete by detecting **variables, functions, and code structure**.
4. Refactoring
	- Help rename **variables of functions** across multiple files.
	- Prevents errors when changing names manually.
	- Example: **Renaming a function** updates all instances automatically.
## Additional Features
- **Debugging tools** for finding and fixing bugs.
- **Collaboration tools** for working with other developers.
- **Plugins & Extensions** to add more functionalitites.
## Conclusion
- IDEs help developers write **code efficiently**.
- They **enhance productivity** by providing smart features for coding, debugging, and refactoring.
