# Including CSS & JavaScript Libraries in HTML
## Date: 2025-02-17
## Introduction
- Developers can build from scratch or use pre-made code (libraries).
- Libraries and frameworks help structure and simplify development.
---
## Dependencies
- Libraries  & frameworks = dependencies (needed for the app to function).
- Must be included in the project to call API functions.
- In frontend, dependencies are referenced in the HTML file via `<link>` and `<script>`.
---
## Including CSS Libraries
- Example: **Bootstrap CSS**
	- Add inside `<head>`:
	```html
	<link rel="stylesheet" href="URL_TO_BOOTSTRAP_CSS">
```
	- `href` -> Specifies library URL
	- `rel="stylesheet"` -> Defines it as a stylesheet
---
## Including JavaScript Libraries
- Example **Bootstrap JS**
	- Add inside `<body>`:
	```html
	<script src="URL_TO_BOOTSTRAP_JS"></script>
```
	- `src` -> Specifies library URL
---
## Adding Bootstrap Components
- Example: Adding a button
```html
<button type="button" class="btn btn-primary">Click this button</button>
```
- `btn-primary` -> Adds Bootstrap's a primary color (blue).
---
## Dependency Tree
- Some dependencies rely on other dependencies.
- Can lead to hundreds of dependencies.
- Manually managing them is time-consuming.
---
## Package Managers
- Automates downloading & installing dependencies.
- Most common for frontend: **Node Package Manager (NPM)**.
- Ensures version consistency across teams.
- Handles dependency trees automatically.
---
## Bundling Tools
- Manually adding multiple dependencies -> Inefficient.
- Bundlers: Combine dependencies into fewer or single files.
- Popular bundlers: Webpack, Gulp.
- Large projects use code splitting to optimize loading times.
---
# Responsive Web Design
## Date: 2025-02-17
## What is Responsive Design?
- Responsive design ensures a webpage adjusts to different screen sizes (laptop, tablets, mobile phones).
- It allows a website to automatically stretch or shrink depending on the display.
- Essential for providing the best user experience across devices.
## Screen Resolution & Pixels
- Screen resolution = Number of pixels (width x height).
	- Example: 1920 x 1080 pixels (Full HD).
- Modern high-resolution screens use logical pixels for smoother visuals.
- Helps improve text clarity, images, and rounded edges.
## Key Components of Responsive Design
Responsive design is based on three main techniques:
1. Flexible Grids
	- Uses columns, gutters, and margins.
	- Instead of fixed pixel sizes, grids use percentage-based values.
	- Ensures elements adjust dynamically to different screen sizes.
2. Fluid Images
	- Uses `max-width: 100%` in CSS.
	- Images scale down when needed but never exceed their original size.
	- Prevents overflowing content and pixelation on larger screens.
3. Media Queries
	- CSS rules that apply based on screen size, orientation, or aspect ratio.
	- Example: Change the background color when screen width is =< 700px.
```css
@media (max-width: 700px) {
	body { background-color: blue; }
}
```
---
## Breakpoints
- Breakpoint = The screen width at which content/layout changes to optimize the user experience.
- Different types of grids use breakpoints differently.
---
## Types of Responsive Grids
1. Fixed Grid
	- Fixed-width columns, flexible margins.
	- Content width does not change within a breakpoint range.
2. Fluid Grid (Full-Width Grid)
	- Flexible columns, fixed gutters & margins.
	- Content expands/shrinks dynamically across screen sizes.
3. Hybrid Grid
	- Combination of fluid-width & fixed-width components.
	- Often used in responsive design frameworks.
---

# Simple Bootstrap Webpage
## Date: 2025-02-19
## 1. Introduction to Bootstrap
- Bootstrap is a collection of pre-written CSS and JavaScript code.
- Helps speed up web development by providing ready-made UI elements.
- Avoids the need to code everything from scratch.
---
## 2. Setting Up the Layout
- First, include container elements to use the Bootstrap grid system.
- Use a `<div>` with the class `container`.
- Add a row using a `<div>` with the class `row`.
---
## 3. Creating Columns
- Inside the row, add two columns for menu items and prices.
- Use `<div class="col">` for each column.
- Name the columns using heading tahs:
	- First column: `<h1>Our Menu</h1>`
	- Second column: `<h2>Prices</h2>`
---
## 4. Adding Menu Items
- Inside the menu column, add dish details:
	- Use `<h2>` for dish name (e.g., `<h2>Falafel</h2>`).
	-  Use `<p>` for ingredients (e.g., `<p>Chickpea, herbs and spices</p>`)
	- Add an image using `<img src="falafel.jpeg" class="img-fluid">`.
	- The `img-fluid` class ensures the image scales properly.
- Repeat the steeps for another dish (e.g., Pasta Salad).
---
## 5. Adding a Price Table
- Inside the price column, create a table using:
	- `<table class="table">` for Bootstrap styling.
	- Use `<tr>` for table rows and `<td>` for table data.
	- Example:
	```html
<tr>
  <td>Falafel</td>
  <td>$12</td>
</tr>
<tr>
  <td>Pasta Salad</td>
  <td>$10</td>
</tr>

```
---
## 6. Final Output 
- The webpage now displays dishes in columns with properly sized images.
- The price table is styled using Bootstrap.
---
# Bootstrap CSS Class Infixes and Modifiers
## Date: 2025-02-19
## 1. Responsive Design with Bootstrap
- A website should adapt to different devices, platforms, and screen sizes.
- No need to redesign for each device-Bootstrap handles responsiveness.
- Bootstrap provides CSS classes, infixes, and modifiers to make development easier.
---
## 2. Bootstrap Breakpoints (Screen Sizes)
- Breakpoints determine when layouts change based on screen size.
- Bootstrap's predefined breakpoints:

| Name              | Width (pixels) | Abbreviation |
| ----------------- | :------------: | ------------ |
| Extra Small       |   `< 576px`    | (Default)    |
| Small             |   `>= 576px`   | `sm`         |
| Medium            |   `>= 768px`   | `md`         |
| Large             |   `>= 992px`   | `lg`         |
| Extra Large       |  `>= 1200px`   | `xl`         |
| Extra Extra Large |  `>= 1400px`   | `xxl`        |
- Mobile-first approach: Extra small (`< 576px`) is the default breakpoint.
---
## 3. Using Infixes in CSS Class Names
- Infixes are abbreaviation for breakpoints added inside Bootstrap class names.
```html
<div class="col-lg-6">Content</div>
```
- `col-lg-6`: Sets column width to 6 grid spaces on large screens (`>=992px`).
- Without and infix (e.g., `col-6`), it applies to all screen sizes.
---
## 4. Bootstrap Modifiers
- Modifier customize Bootstrap components (e.g., colors for alerts).
- Example: Bootstrap alerts use modifier for different colors.
```html
<div class="alert alert-primary">This is a primary alert</div>
<div class="alert alert-danger">This is a danger alert</div>
```
- Modifier List:
	- `primary` (Blue)
	- `secondary` (Gray)
	- `success` (Green)
	- `info` (Light Blue)
	- `warning` (Yellow)
	- `danger` (Red)
	- `light` (Light Gray)
	- `dark` (Black)
---
## 5. Example: Using Infixes & Modifiers in Code
- Changing column size on large screens
```html
<div class="col-lg-6">Content</div>
```
- Adding an alert component
```html
<div class="alert alert-primary" role="alert">
  This is a Bootstrap alert!
</div>
```
- Changing alert color to red (danger)
```html
<div class="alert alert-danger" role="alert">
  This is an error message!
</div>
```
---
## 6. Key Takeaways 
- Infixes help define different layouts for different screen sizes.
- Modifiers customize Bootstrap components (e.g., colors, styles).
- Bootstrap saves time by providing reusable UI elements.
- It's mobile-first by default, meaning styles apply to small screens first.
---
# Bootstrap Grid System and Responsive Design
## Date: 2025-02-19
## 1. Bootstrap Grid System Overview
- Bootstrap provides a flexible and responsive grid system to create webpage layouts.
- Uses a 12-column grid system, which can be fluid or fixed.
- The grid system consists of three main components:
	- Container: Root element that holds all rows and columns.
	- Rows: Direct children of the container that hold columns.
	- Columns: Define content placement inside rows.
---
## 2. Containers in Bootstrap
- Containers align and pad content based on the screen size.
- There are two types of containers:
	- `.container` -> Fixed width at different breakpoints.
	- `.container-fluid` -> Full width, spanning the entire screen.
---
## 3. Adding Rows and Columns
- Columns must be inside rows for proper alignment.
- By default, if two columns are added in a row, Bootstrap automatically assigns 6 column spaces each (`col-6`).
- You can explicitly define column width using a number suffix:
```html
<div class="container">
  <div class="row">
    <div class="col-8">Menu</div>
    <div class="col-4">Prices</div>
  </div>
</div>
```
- The menu column takes 8 spaces.
- The price column takes 4 spaces.
---
## 4. Responsive Grid with Breakpoints
- Bootstrap allows different layouts for different screen sizes using breakpoints.
- To stack elements vertically on mobile and side by side on larger screens:
```html
<div class="container">
  <div class="row">
    <div class="col-12 col-lg-6">Menu</div>
    <div class="col-12 col-lg-6">Prices</div>
  </div>
</div>
```
- On mobile (`<992px`): Each column takes 12 spaces (full width) -> stacked.
- On large screen (`>=992px`); Each column takes 6 spaces -> side by side.
---
## 5. Testing Responsive Layouts
- Use Developer Tools (`F12`) to test responsiveness:
	- Click on the mobile/tablet icon to enable device mode.
	- Select different screen sizes to simulate various devices.
---
## 6. Key Takeaways
- Bootstrap's grid system makes layout design easier and faster.
- 12-column structure allows precise content positioning.
- Breakpoints (`sm`, `md`, `lg`, etc.) help create responsive designs.
- No need to design separate layouts for different devices. Bootstrap automatically adjusts content display.
---
# Bootstrap Components for a Restaurant Website
## Date: 2025-02-19
## 1. What are Bootstrap Components?
- Pre-built UI elements that simplify web development.
- Examples: Alerts, Badges, Cards, Tables, Buttons, Navigation menus.
---
## 2. Adding a New Dish to the Menu (Fried Calamari)
Steps to update the menu with the new dish:
1. Add a heading (`<h2>`) for the dish name.
2. List the ingredients inside a `<p>` tag.
3. Add an image using `<img>` and ensure it resizes properly:
```html
<img src="calamari.jpeg" class="img-fluid" alt="Fried Calamari">
```
- `img-fluid` ensures the image scales properly within its column.
---
## 3. Highlighting "New" Using Bootstrap Badges
- Use Bootstrap's badge component to indicate that the dish is new:
```html
<h2>Fried Calamari <span class="badge bg-primary">New</span></h2>
```
- `badge` -> Creates the badge.
- `bg-primary` -> Uses Bootstrap's primary color (blue).
---
## 4. Enhancing Layout with Bootstrap Cards
- Cards improve the visual design by organizing content neatly.
- Steps to use cards for menu items:
	1. Wrap each dish in a `card` component.
	2. Move the image inside the card using `card-fluid` instead of `img-fluid`.
	3. Use `card-body` to group text content.
	4. Apply `card-title` to the dish name and `card-text` to the description.
```html
<div class="row">
  <div class="col-12 col-lg-6">
    <div class="card">
      <img src="calamari.jpeg" class="card-fluid" alt="Fried Calamari">
      <div class="card-body">
        <h2 class="card-title">Fried Calamari <span class="badge bg-primary">New</span></h2>
        <p class="card-text">Ingredients: Squid, Buttermilk</p>
      </div>
    </div>
  </div>
</div>

```
- On mobile (`col-12`), each card stacks.
- On desktop (`col-lg-6`), cards appear side by side.
--- 
## 5. Updating the Price List Using Bootstrap Tables
- Use a table to display the menu prices:
```html
<table class="table">
	<tr>
		<td>Fried Calamari</td>
		<td>$12</td>
	</tr>
</table>
```
- `table` -> Adds basic table styling.
- `tr` & `td` -> Defines rows and columns.
---
## 6. Adding an Alert for the New Dish
- Bootstrap's alert component highlights important information.
- Steps to add an alert message:
```html
<div class="alert alert-info" role="alert">
  Try our new Fried Calamari!
</div>
```
- `alert` -> Creates and alert box.
- `alert-info` -> Makes it blue.
- `role="alert"` -> Identifies it as an alert for accessibility.
---
## 7. Final Outcomes & Benefits
- The menu looks more structured with Bootstrap cards.
- Images scale properly within their containers.
- The price list is clear using tables. 
- Customers are notified about new items with an alert.
---
# Static vs. Dynamic Content & Web vs. Application Servers
## Date: 2025-02-20
## Personalized Recommendations in Websites
- Websites provide different recommendations based on user profiles.
- This is achieved through dynamic content adaptation.
---
## Static vs. Dynamic Content
- Static Content:
	- Pre-stored files sent as-is from the web server.
	- Examples: Videos, images, HTML files.
- Dynamic Content:
	- Generated at the time of the HTTP request.
	- Depends on user input or real time data (e.g., news updates).
---
## Role of Web Server vs. Application Server
- Web Server:
	- Sends website content to the browser.
	- Handles static content directly.
	- Acts as a middle layer between the browser and the application server.
- Application Server (Back-End):
	- Generates dynamic content.
	- Handles complex processing: authentication, database queries, and logic execution.
	- Sends processed data back to the web server.
---
## Examples of Static & Dynamic Content
- Static Content Example:
	- Clicking on a video play button -> Web server sends the file.
- Dynamic Content Example:
	- Logging into a course:
		- Web server communicates with the application server.
		- Application server checks enrollment and serves user-specific content.
---
## Application Server Load & Performance Optimization
- Dynamic content generation takes longer due to processing complexity.
- Application servers have limited request-handling capacity.
---
## Caching to Improve Performance
- Caching: Web server stores a copy of dynamic content.
	- First request -> Web server fetches data from the application server and caches it.
	- Subsequent request -> Web server serves caches content instead of reprocessing. 
	- Cache updates periodically or with user interaction.
---
## Key Takeaways
- Static content is pre-stored, while dynamic content is generated on request.
- Web servers serve static content and relay requests to application servers.
- Application servers generate dynamic content and handle complex processing.
- Caching reduces the load on application servers, improving response times.
---
# Single-Page Applications (SPAs) vs. Traditional Websites
## Date: 2025-02-20
## Why Use an SPA?
- SPAs provide a fast, mobile-friendly, and engaging experience.
- Examples: Social networks, messaging apps, map applications.
- Traditional websites reload entire pages for every interactions, consuming more bandwidth and server resources.
---
## How Traditional Websites Work
- Every interaction sends a request to the server.
- The server generated and returns a complete HTML page.
- Slow performance, especially for complex sites or poor connections.
---
## How SPAs Work
- Only a single HTML page is loaded initially.
- The page dynamically updates as users interact with it.
- Content is updated via JavaScript without reloading the page.
- Faster, more responsive user experience.
---
## SPA Resource Loading Approaches
1. Bundling:
	- Loads all HTML, CSS, and JavaScript at once.
	- Can be slow for large apps.
2. Lazy Loading (Code Splitting):
	- Loads only the necessary resources.
	- Additional resources are fetched as needed.
---
## Example Scenarios
- Movie Recommendation Feature:
	- Traditional: A new page is loaded with the movie name.
	- SPA: A JSON object with the movie name is returned, and the page updates dynamically.
- News & Profile Pages:
	- Traditional: Full page reload for each section.
	- SPA: Uses templates (views) and updates only the necessary HTML elements with data from JSON responses.
---
## Choosing Between SPA and Traditional Websites
- SPA Benefits:
	- Faster, smoother interactions
	- Less bandwidth usage.
	- Suitable for apps with dynamic content.
- Potential Downsides of SPAs:
	- Large initial load time (if using bundling).
	- SEO challenges (though modern frameworks address this).
---
## Key Takeaways
- SPAs offer speed and efficiency but may not fit every project.
- Use SPAs for dynamic, interactive apps, and consider traditional approaches for simpler, content-heavy sites.
---
# Introduction to React
## Date: 2025-02-20
## What is React?
- React is a component-based JavaScript library for building user interfaces on web and mobile.
- Open-source since 2013, maintained by community contributors and companies.
- Commonly used for single-page applications (SPAs) and mobile apps (React Native).
---
## Why Use React?
- Reduces code complexity -> Easier to write, test, and maintain.
- Works with other JavaScript libraries for navigation, state management, and API requests.
- Improves performance with optimized updates and rendering.
- Large community -> Many tools and libraries available.
---
## React Components
- Core Concept: React applications are built using reusable components.
- A component is a self-contained UI element (e.g., a music player, photo gallery, or user profile picture).
- Benefits of components:
	- Reusability: Use the same component in different places.
	- Modularity: Develop and test parts of an application in isolation.
	- Efficiency: Avoid rewriting code for repeating UI elements.
---
## Pre-Built React Components
- Many open-source component libraries for common functionalities:
	- Video players
	- Maps integration
	- UI frameworks (Material-UI, Tailwind, ShadCN)
---
## React Community & Growth
- Annual React conferences introduce new features and encourage community engagement.
- The library is continuously evolving with new improvements.
---
## Conclusion
- React streamlines front-end development by making it modular, efficient, and scalable.
- Instead of building everything from scratch, leverage pre-built components to save time and efforts.
---
# React Virtual DOM
## Date: 2025-02-21
## Introduction
- React components are used to build user interfaces efficiently.
- However, directly updating the browser DOM is slow and resource-intensive.
- React solves this issue using a Virtual DOM to optimize updates.
---
## What is the Virtual DOM?
- Virtual DOM (VDOM) is a lightweight copy of the browser DOM, stored in memory.
- React uses the Virtual DOM to track changes before updating the real DOM.
---
## How React Uses the Virtual DOM
1. React creates a Virtual DOM when rendering components.
2. When a component updates, React first updates the Virtual DOM.
3. React compares the new Virtual DOM with the previous Virtual DOM.
4. It identifies only the changed elements and updates only those parts in the browser DOM.
5. This process is called Reconcilation.
---
## Why is the Virtual DOM Important?
- Minimizes unnecessary updates -> Only modified elements change.
- Improves performance -> Faster updates, smoother UI.
- Enhances user experience -> Web apps remain responsive and efficient.
---
## Conclusion
- The Virtual DOM makes React applications faster by reducing direct interactions with the browser DOM.
- Instead of re-rendering the entire page, React only updates what's necessary.
---
# Understanding Component Hierarchy in React
## Date: 2025-02-21
## Introduction 
- Planning an application as a series of components can be challenging at first.
- React allows developers to break down UI into reusable components.
- Every React app has a root component (App component), which contains child components.
---
## Example: Shopping List Application
### Component Breakdown
1. App Component (Root Component)
	- Contains the NewItemBar and ShoppingList components.
2. NewItemBar Component
	- Allows users to add new items to the shopping list.
3. ShoppingList Component
	- Displays a list of shopping items.
	- Contains multiple ShoppingItem components (one for each item).
4. ShoppingItem Component
	- Represents individual items to the list (e.g., Chicken, Noodles).
	- Items disappear from the list when checked off.
---
## Example: Blog Website Structure
### Component Breakdown
1. App Component (Root Component)
	- Contains the Navbar and Page components.
2. Navbar Component
	- Displays the blog title, navigation links, and SearchComponent.
3. Page Component 
	- Contains: 
		- MainFeature Component -> Displays a large featured blog post.
		- SmallFeature Component (used twice) -> Displays two smaller blog summaries.
4. SmallFeature Component
	- Reused twice with different blog post data.
	- Contains a Thumbnail Component to display a blog image.
---
## Benefits of Component-Based Development
- Reusability -> The same component can be used multiple times with different data.
- Modurarity -> Breaking UI into components makes the application easier to maintain.
- Scalability -> New components can be added or modified independently.
---
## Conclusion
- Breaking down an application into components helps structure the UI efficiently.
- Reusing components saves time and improves maintainability.
- With practice, planning a React component hierarchy becomes second nature.
---
