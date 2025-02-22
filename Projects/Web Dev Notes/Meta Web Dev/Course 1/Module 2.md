# Introduction to HTML
## 2025-02-13
### 1. What is HTML?
- **HTML (Hypertext Markup Language)** is a standard language for creating web pages.
- It provides the **structure** of a webpage, similar to how a frame supports a building.
- HTML was **invented by Sir Tim Berners-Lee** in **1991** at CERN.
### 2. HTML Basics
- HTML files usually have a **.html** extension.
- The first page of a website is often named **index.html**.
- HTML consists of **elements and tags** that structure a webpage.
### 3. HTML Tags and Elements
- **Tags:** Enclosed in **angle brackets (< >)**, e.g., `<p>`.
- **Elements:** A combination of an **opening tag, content, and closing tag**.
	- Example: `<p>This is a paragraph.</p>`.
- **Closing Tags:** Most elements have a closing tag with a **forward slash (`/`)**.
	- Example: `</p>` closes a paragraph tag.
### 4. Nesting HTML Elements
- **Elements can contain other elements**.
	- e.g., `<p>This is <i>italic<i/> text.</p>`.
- **Self-closing tags**: Do not require a closing tag. 
	- Example: `<br>`.
### 5. HTML Standards
- The **HTML specification** is maintained bu **W3C (World Wide Web Consortium)**.
- The **current version** is **HTML5**.
- Example:
	`<img src="icon.png"> <!-- Displays an image -->`
	`<p>Some text below the image</p>`
- By default, the browser displays the **basic structure** without styling.
- **CSS** is needed to control the appearance of the webpage.
### Conclusion
- HTML provides the **foundation** for web pages.
- Tags and elements **define the structure** of a webpage.

# HTML Document Structure
## 2025-02-13
### 1. Viewing HTML locally
- HTML files do not need a web server to be viewed.
- They can be saved on a computer and opened in a web browser.
### 2. Creating an HTML File in VS Code
- Right-click in the **Explorer panel** => **New File** => Name it index.html
### 3. Standard HTML Structure
#### 1. DOCTYPE Declaration
- Specifies that the document is an HTML file.
	`<!DOCTYPE html>`
#### 2. HTML Root Element
- Wraps all content of the document.
	`<html></html>`
#### 3. Head Section
- Contains **metadata** and information about the webpage.
- Not displayed in the browser.
- Common elements in the `<head>`:
	- **Title**(Displayed in the browser tab)
		`<title>Little Lemon Menu</title>`
	- **Meta Tags** (For SEO, description, etc.)
	- **CSS Links** (To style the webpage)
#### 4. Body Section
- Contains the actual **content** of the webpage.
- Includes headings, paragraphs, images, videos, etc.
## 4. Adding Content to the Webpage
- **Headings (`h1`,`h2`)**
	- `<h1>`: Main heading
	- `<h2>`: Subheadings for menu items
		`<h1>Our Menu</h1>`
		`<h2>Falafel</h2>`
		`<h2>Pasta Salad</h2>`
- **Paragraphs(`p`)
	- Used to add descriptions.
		`<p>Chickpeas, herbs, and spices.</p>`
		`<p>Lettuce, vegetables, and mozzarella.</p>`
### 5. Viewing HTML in a Browser
1. **Save the file** (`Ctrl + S` on Windows, `Cmd + S` on Mac & Linux).
2. **Open the file in File Explorer/Finder**.
3. **Double-click** the `index.html` file to open it in a browser.
### 6. Expanding Your Knowledge 
- Many **HTML tags** exist for different purposes.
- Explore food websites for inspiration.
- Practice using **basic HTML elements** to improve your skills.
## Conclusion
- HTML documents have a **structured format** using the head and body sections.
- **HTML files can be viewed locally** in a web browser.
- Using **headings, paragraphs, and metadata**, a **basic webpage** can be created.

# Linking Webpages to Build a Website
## 2025-02-15
### 1. Understanding Websites
- A website consists of multiple webpages linked together.
- The **anchor(`<a>`) tag** is used to create **hyperlinks** between pages.
### 2. Creating a Second Webpage
- A new webpage for **Little Lemon's Location** is created as `location.html`.
- The same file structure as `index.html` is used.
- Content added to `location.html`:
	- **Heading (`<h1>`):** Our Location
	- **Paragraph (`<p>`):** Address - 123 Rome Road, Main District, Capital City
- **Save the file** using `Ctrl + s`(Windows).
### 3. Linking Pages Using Anchor Tag
- **Navigate** to `index.html` and add a hyperlink
- **Syntax:**
	`<a href="location.html">Our Location</a>`
- **Explanation:**
	- `<a>` tag: Creates a clickable link.
	- `href="location.html"`: Specifies the file to link to.
	- **Displayed text**: Our Location(shown as a clickable blue link).
### 4. Testing the Link
- Save the file and open `index.html` in a web browser:
	- Right-click => Reveal in File Explorer (Windows)/ FInder(Mac).
	- Double-click to open in a browser.
- Clicking on Our Location should open `location.html`.
### 5. Conclusion
- Successfully linked webpages to build a basic website.
- You can now create and connect multiple pages in a website.

# Adding Images to an HTML Webpage
## 2025-02-15
### 1. Importance of Images in Websites
- Images enhance the **user experience**, especially on food-related websites.
- Websites without images may feel incomplete.
### 2. Using the `<img>` Tag to Add Images
- The `<img>` tag is used to **display images** on a webpage.
- **Images are not embedded directly**; instead, they are linked using the `src` (source) attribute.
- Example image files:
	- `falafel.jpeg`
	- `pasta-salad.jpeg`
### 3. Syntax for Adding Images
```html
<img src="falafel.jpeg">
<img src="pasta-salad.jpeg">
```
- The `src` attribute specifies the **image file path**.
- The browser **creates a placeholder** for the image.
### 4. Resizing Images Using HTML
- Images maybe be too large by default.
- You can resize them using the `width` and `height` attributes.
	```html
	<img src="falafel.jpeg" width="240" height="135">
	<img src="salad.jpeg" width="240" height="135">
	```
- This sets both images to **240x135 pixels**.
### 5. Improving Accessibility with `alt` Attribute
- The `alt` (alternative text) attribute **describes the image**.
- Benefits of `alt` text:
	- Helps **screen readers** assist visually impaired users.
	- Improves **SEO (search engine rankings)**.
- Example:
	```html
	<img src="falafel.jpeg" width="240" height="135" alt="A falafel">
	<img src="salad.jpeg" width="240" height="135" alt="A pasta salad">
	```
- The `alt` text is **not visible** on the webpage but is read by assistive technologies.

# HTML Tables: Structuring Data  
**Date:** 2025-02-15  

## 1. Why Use Tables in HTML?  
- Tables help **organize data** neatly in rows and columns.  
- Useful for price lists, schedules, product specs, etc.  

---

## 2. Creating a Basic Table  
- Example: Adding a **menu price list** in `index.html`:  
  ```html
  <table>
    <tr>
      <th>Dish</th>
      <th>Price</th>
    </tr>
    <tr>
      <td>Falafel</td>
      <td>$10</td>
    </tr>
    <tr>
      <td>Pasta Salad</td>
      <td>$12</td>
    </tr>
  </table>
  ```
- **Tags used:**  
  - `<table>` → Creates the table.  
  - `<tr>` → Defines table rows.  
  - `<th>` → Table header (bold text).  
  - `<td>` → Table data (cell content).  

---

## 3. Styling Tables with CSS  
- **Adding a border for better readability**:  
  ```html
  <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
    }
    th, td {
      padding: 8px;
      text-align: left;
    }
  </style>
  ```
- **Key CSS properties:**  
  - `border: 1px solid black;` → Adds borders to cells.  
  - `border-collapse: col🚀 **Next Step:** Observe online forms and improve your form design skills! lapse;` → Merges borders for a clean look.  
  - `padding: 8px;` → Adds space inside table cells.  
  - `text-align: left;` → Aligns text to the left.  

---

## 4. Final Thoughts  
- **Tables** are useful for structured data.  
- **Headers (`<th>`)** improve readability.  
- **Basic CSS** makes tables visually appealing.  

# HTML Forms: Collecting User Input  
**Date:** 2025-02-15  

## 1. Why Are Forms Important?  
- **Forms enable user interaction** with websites.  
- Used for login, checkout, feedback, etc.  
- Forms submit user data via **HTTP requests** to a server.  

---

## 2. Basic Form Structure  
- Forms are created using the `<form>` tag.  
- The `action` attribute specifies where to send form data.  
- The `method` attribute determines how data is sent:  
  - `GET` → Retrieves information.  
  - `POST` → Sends data to the server.  

**Example of a Basic Form:**  
```html
<form action="/submit" method="POST">
  <label for="username">Username:</label>
  <input type="text" id="username" name="username" required>
  
  <label for="password">Password:</label>
  <input type="password" id="password" name="password" required>

  <input type="submit" value="Login">
</form>
```

---

## 3. Common Input Types  
| **Input Type**  | **Description** |
|----------------|----------------|
| `text`        | Single-line input (e.g., username). |
| `password`    | Masks input for security. |
| `email`       | Ensures valid email format. |
| `number`      | Accepts only numeric values. |
| `checkbox`    | Allows multiple selections. |
| `radio`       | Select only **one** option from a group. |
| `file`        | Upload files. |
| `textarea`    | Multi-line text input. |
| `select`      | Dropdown list for selecting options. |

---

## 4. Special Input Types  
### 4.1. Checkboxes (Multiple Selections)  
```html
<label><input type="checkbox" name="hobby" value="reading"> Reading</label>
<label><input type="checkbox" name="hobby" value="travel"> Travel</label>
```

### 4.2. Radio Buttons (Single Selection)  
```html
<label><input type="radio" name="gender" value="male"> Male</label>
<label><input type="radio" name="gender" value="female"> Female</label>
```

### 4.3. Multi-line Text Input (`<textarea>`)  
```html
<label for="message">Message:</label>
<textarea id="message" name="message" rows="4" cols="50"></textarea>
```

### 4.4. Dropdown (`<select>`)  
```html
<label for="country">Select Country:</label>
<select id="country" name="country">
  <option value="us">USA</option>
  <option value="in">India</option>
</select>
```

---

## 5. Summary  
- Forms allow **user input** to be sent to a server.  
- Use **different input types** for better user experience.  
- Choose **GET** for retrieving data, **POST** for sending data.  
- Use **checkboxes, radio buttons, text areas, and dropdowns** where appropriate.  

---
# Understanding the Document Object Model (DOM)
**Date:** 2025-02-15
## 1. What is the DOM?
- **DOM (Document Object Model)** is a tree structure representing an HTML document.
- It allows **JavaScript** to interact with and modify the web page dynamically.
- Without the DOM, HTML pages would be **static** (only text and images, no interaction).

---
## 2. How the DOM is Created
When a browser loads an HTML page:
1. It reads the **HTML file** and constructs a **DOM tree**.
2. Each **HTML element** becomes a **node** in the DOM.
3. JavaScript can then access and modify these nodes.
Example **HTML Code:**
```html 
<!DOCTYPE html>
<html>
  <head>
    <title>My Page</title>
  </head>
  <body>
    <div>
      <h1>Welcome</h1>
    </div>
    <div>
      <p>This is a paragraph.</p>
    </div>
  </body>
</html>
```
### Corresponding DOM Structure:
```
📂 HTML
 ├── 📄 HEAD
 │   └── 📄 TITLE → "My Page"
 ├── 📂 BODY
 │   ├── 📂 DIV
 │   │   └── 📄 H1 → "Welcome"
 │   ├── 📂 DIV
 │   │   └── 📄 P → "This is a paragraph."
```
--- 
## 3. JavaScript and the DOM
Javascript interacts with the DOM to:
- **Modify content** (e.g., updating text dynamically).
- **Handle user actions** (e.g., button clicks, mouse movements).
- **Add or remove elements** (e.g., adding items to a to-do list)
- **Animate elements** (e.g., fade-in effects, notifications).
### Example : Updating a Clock in Real-Time
```html
<p id="clock">00:00:00</p>

<script>
  function updateClock() {
    document.getElementById("clock").innerText = new Date().toLocaleTimeString();
  }
  setInterval(updateClock, 1000);
</script>
```
This updates the **clock** every second!

---
## 4. DOM Manupulation Examples
### 4.1. Changing an Element's Content
```js
document.getElementById("myText").innerText = "New Text!";
```
### 4.2. Adding a New Element
```js
let newDiv = document.createElement("div");
newDiv.innerText = "Hello World!";
document.body.appendChild(newDiv);
```
### 4.3. Removing an Element
```js
document.getElementById("myElement").remove();
```
### 4.4. Handling Click Events
```js
document.getElementById("btn").addEventListener("click", function() {
  alert("Button Clicked!");
});
```

---
## 5. Applications of the DOM
| **Use Case** | **Example** |
|-------------|------------|
| **Live Updates** | Digital clock showing real-time time |
| **Interactive UI** | Like button changing color when clicked |
| **Dynamic Content** | Adding/removing items in a to-do list |
| **Form Validation** | Showing error messages when input is incorrect |
| **Animations** | Notifications popping up in a chat app |

---
## 6. JavaScript Libraries and the DOM
Many JavaScript frameworks use the DOM:
- **React.js** => Uses a **Virtual DOM** for efficient updates.
- **jQuery** => Simplifies DOM manipulations.
- **GSAP** => Used for **DOM animations**.

---
## 7. Summary
- **DOM is a structured representations of an HTML document**.
- **Javascript interacts with the DOM** to make web pages **dynamic**.
- Developers can **add, update, or remove elements** from the page.
- **Handling user interactions** (clicks, scrolls, inputs) is key to modern websites.

---
# Web Accessibility
**Date:** 2025-02-15
## 1. Importance of Web Accessibility
- Web developers should ensure that everyone can access and enjoy the internet.
- Similar to architects designing buildings with ramps and rails for accessibility.
- Websites need to be built in a certain way to improve accessibility.

---
## 2. History & Standards
- **1997:** The Web Accessibility Initiative (WAI) was launched.
- **Sir Tim Berners-Lee:** "The power of the Web is in its universality. Access by everyone regardless of disability is an essential aspect".
- **W3C's WAI:** Developed specifications and supporting resources for accessibility (considered international standards).
- **2016:** The European Union passed the Web Accessibility Directive, requiring  public sector websites and mobile applications to be accessible.

---
## 3. Disabilities & Web Interaction
- Web accessibility isn't just for visual impairments - it includes:
	- **Visual** (e.g., blindness, low vision)
	- **Audio** (e.g., hearing impairments)
	- **Cognitive & Neurological** (e.g., dyslexia, ADHD)
	- **Physical & Speech** (e.g., limited motor control)

---
## 4. Assistive Technologies
- **Screen Readers:** Read content aloud, used by blind, vision-impaired users, and those with learning difficulties.
- **Speech Recognition Software:** Converts spoken words into commands or text input (useful for those with physical or neurological disabilities).
- **Subtitles & VIdeo Scripts:** Aid users with hearing impairements.

---
## 5. Best Practices for Accessibility
- Think of accessibility from the **start** of the project.
- Retrofitting accessibility is **harder** than building it in from the beginning.
- Use **correct HTML structure:**
	- Proper **paragraph (`<p>`) and heading (`<h1>`-`<h6>`) tags** improve interaction with assistive technologies.
	- Avoid using **multiple line breaks (`<br>`)** for spacing -- use CSS instead.

---
## 6. ARIA (Accessible Rich Internet Applications)
- WAI defines **ARIA specification** for improving accessibility in complex web applications.
- ARIA helps in cases where semantic HTML alone is insufficient for accessibility.

---

# CSS Basics
**Date:** 2025-02-15
## 1. HTML vs CSS (Building Analogy)
- **HTML** = Frame & Structure of a building.
- **CSS** = Paint, wallpaper, fixtures, artwork, and overall style.
- CSS tells the browser how the **display** HTML elements on the screen.
## 2. Structure of a CSS Rule
A CSS rule consists of:
1. **Selector** => Specifies which HTML elements to style.
2. **Declaration Block** => Enclosed in `{}` and contains style declarations.
3. **Declaration** = Property + Value, e.g.,
```css
h1 {
color: gray;
}
```
- `h1` = **Selector**
- `color` = **Property**
- `gray` = Value
## 3. Linking CSS to an HTML File
- Use the `<link>` tag inside the `<head>` of an HTML file:
```html
<link rel="stylesheet" href="style.css"
```
- `ref="stylesheet` => Specifies it's a stylesheet.
- `href="style,css"` => Points to the CSS file.
## 4. Selectors in CSS
### Type Selector
- Targets all elements of a given type:
```css
h1 {
	color: purple;
}
```
- Applies to all `<h1>` elements.
### ID Selector
- Targets **one specific element** using `#`:
```css
#header1 {
	color: green;
}
```
- Only affects the element with `id=#header1`.
## 5. CSS Precedence & Specificity
- **More specific rules override less specific ones**.
- **Hierarchy of precedence** (from least to most powerful):
	1. **Type Selector (`h1`)**
	2. **Class Selector (`.class-name`)**
	3. **ID Selector (`#id-name`)**
	4. **Inline Styles (`style="color: red;"`)**
	5. **!important** (overrides all, use sparingly)

---
# CSS Box Model
**Date:** 2025-02-15
## 1. Understanding the Box Model
- Every HTML element is treated as a **box** by the browser.
- The **box model** consists of four parts:
	1. **Content** -> The actual text or images inside the element.
	2. **Padding** -> Space between the content and border.
	3. **Border** -> Surrounds the content and padding.
	4. **Margin** -> Space between this element and neighboring elements.
## 2. Box Model Components & CSS Properties
1. **Content**
	- Defined by `width` and `height`.
	- Default size is based on the content itself.
	- CSS properties to control content size:
	```css
	width: 200px;
	min-width: 100px;
	max-width: 300px;

	height: 150px;
	min-height: 100px;
	max-height: 250px;
	```
2. **Padding (Space inside the border)**
	- Extends the content area to create inner spacing.
	- Controlled by:
		```css
		padding-top: 10px;
		padding-right: 15px;
		padding-bottom: 10px;
		padding-left: 15px;
		
		/* Shorthand */
		padding: 10px 15px;  /* top/bottom | left/right */
		padding: 10px;       /* All sides */
		```
	- Formula:
		```mathematica
		Padding Box Width = Content Width + Padding Left + Padding Right
		Padding Box Height = Content Height + Padding Top + Padding Bottom
		```
3. **Border (Outer outline of an element)**
	- Defines thickness and style of borders.
	- Example CSS:
		```css
		- border-width: 5px;
		border-style: solid;
		border-color: black;
		
		/* Shorthand */
		border: 5px solid black;
		```
	- **Border Types:** `solid`, `dashed`, `dotted`, `double`,etc.
	- Formula:
		```mathematica
		Border Box Width = Padding Box Width + Border Left + Border Right
		Border Box Height = Padding Box Height + Border Top + Border Bottom
		```
4. **Margin (Outer spacing around an element)**
	- Separates elements from each other.
	- Example CSS:
		```css
		margin-top: 20px;
		margin-right: 15px;
		margin-bottom: 20px;
		margin-left: 15px;
		
		/* Shorthand */
		margin: 20px 15px;  /* top/bottom | left/right */
		margin: 20px;       /* All sides */
		```
	- **Formula:**
		```mathematica
		Margin Box Width = Border Box Width + Margin Left + Margin Right
		Margin Box Height = Border Box Height + Margin Top + Margin Bottom
		```
## 3. Box Model Analogy
- **Content** = You
- **Padding** = Thickness of your clothes
- **Border** = Outline/silhouette
- **Margin** = Personal space
## 4. Practical Tip
- The **total size** of an element is the **margin box size** (includes everything).
- Use `box-sizing: border-box;` to make width and height include padding & border:
```css
* {
	box-sizing: border-box;
}
```

---
# Document Flow & Display Property in CSS
**Date:** 2025-02-15
## Understanding Document Flow
- The web browser places HTML elements on the screen using **document flow**.
- Elements are categorized as **block-level** or **inline** elements.

---
## 1. Block-Level Elements
- Characteristics:
	- Always start on a **new line**.
	- Take up **the full width** of the parent container.
	- Stack **vertically** like a stack of boxes.
- Examples:
```html
	<div>...</div>
	<p>...</p>
	<form>...</form>
	<h1>...</h1>
	<section>...</section>
	<article>...</article>
	```
## 2. Inline Elements
- Characteristics:
	- Do **not** start on a new line.
	- Only take up as much **width** as necessary.
	- Flow **horizontally** within the surrounding content.
- Examples:
	```html
	<a href="#">...</a>
	<img src="image.jpg" />
	<span>...</span>
	<strong>...</strong>
	<em>...</em>
	<label>...</label>
	<input type="text" />
	```
## 3. Changing Element Behavior with `display` Property
- You can **change** the default display type using CSS.
- Example: Change an inline element to block-level:
```css
	span {
		display: block;
	}
```
- Example: Change a block element to inline:
```css
	div {
		display: inline;
	}
```
## 4. Example: Div & Span Difference
### HTML Code Example:
```html
<div>
    <span>This is an inline span.</span>
    <span>This is another inline span.</span>
</div>

<div>
    <div>This is a block-level div.</div>
    <div>This is another block-level div.</div>
</div>
```
### Output in Browser:
- The `div` elements **stack vertically**
- The `span` elements **flow inline** (side by side).
## 5. Modifying Display Property with ID Selector
### CSS Example:
```css
#middle {
	display: inline;
}
```
- If applied to a `<div> id="middle">`, it will **flow inline** like a span.
- Removing the property will **restore its block behavior**.

---
