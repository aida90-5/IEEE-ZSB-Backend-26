# GET vs POST
## GET
- The data is sent via the URL.
- It can be cached, bookmarked, and stored in the browser history.
- It has limited data length.
- It is not secure since the data is shown in the URL.

## POST
- The data is not sent via the URL but in the body of the request.
- It is secure compared to GET.
- It cannot be bookmarked or cached.
- It cannot be stored in the browser history.
- It can handle long data.

For the register page, we should use the POST method, especially  since user data such as names, emails, and passwords should not be shown in the URL.

# Semantic HTML
Semantic tags like `<header>`, `<main>`, `<section>`, and `<footer>` describe the meaning and structure of the content, unlike `<div>` which has no meaning.

- Improved Accessibility
- Better SEO
- Enhanced Readability

By using semantic HTML, you can create web pages that are more accessible, search engine-friendly, and easier to maintain.

# The Request/Response Cycle

- **URL Entry:** You type `google.com` in the browser and press Enter.
- **DNS Lookup:** The browser asks a DNS server to translate `google.com` into its corresponding IP address.
- **Client Sends Request:** The browser sends an HTTP/HTTPS request to the server at that IP address.
- **Server Processes Request:** The Google server receives the request and prepares the webpage data.
- **Server Sends Response:** The server sends back the HTML, CSS, JS, and other resources.
- **Client Processes Response:** The browser renders the page so you can see Google’s homepage.