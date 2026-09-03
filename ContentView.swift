import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView()
            .ignoresSafeArea()
    }
}

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()

        let html = """
        <!DOCTYPE html>
        <html lang="ar" dir="rtl">
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style>
                body {
                    font-family: -apple-system, sans-serif;
                    background: #f2f2f7;
                    text-align: center;
                    padding: 50px 20px;
                }

                .box {
                    background: white;
                    padding: 30px;
                    border-radius: 20px;
                    box-shadow: 0 5px 20px #ccc;
                }

                h1 {
                    color: #222;
                }

                button {
                    background: #007aff;
                    color: white;
                    border: none;
                    padding: 14px 25px;
                    border-radius: 12px;
                    font-size: 17px;
                }
            </style>
        </head>

        <body>
            <div class="box">
                <h1>مرحبًا 👋</h1>
                <p>هذا تطبيق iPhone محلي.</p>

                <button onclick="alert('أهلًا بك! 👋')">
                    اضغط هنا
                </button>
            </div>
        </body>
        </html>
        """

        webView.loadHTMLString(html, baseURL: nil)

        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {}
}