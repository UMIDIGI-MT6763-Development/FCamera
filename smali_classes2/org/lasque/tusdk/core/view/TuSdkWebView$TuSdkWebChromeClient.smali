.class public Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TuSdkWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TuSdkWebChromeClient"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TuSdkWebView;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/view/TuSdkWebView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    const-string p1, "TuSdkWebView onJsAlert : %s | %s | %s"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 v2, 0x2

    aput-object p4, v0, v2

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1, v0, p2, p3, p4}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;->onJsAlert(Lorg/lasque/tusdk/core/view/TuSdkWebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    const-string p1, "TuSdkWebView onJsConfirm : %s | %s | %s"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 v2, 0x2

    aput-object p4, v0, v2

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1, v0, p2, p3, p4}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;->onJsConfirm(Lorg/lasque/tusdk/core/view/TuSdkWebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    const-string p1, "TuSdkWebView onJsPrompt : %s | %s | %s"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 v2, 0x2

    aput-object p5, v0, v2

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;->onJsPrompt(Lorg/lasque/tusdk/core/view/TuSdkWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1, v0, p2}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;->onProgressChanged(Lorg/lasque/tusdk/core/view/TuSdkWebView;I)V

    :cond_1
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1, v0, p2}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;->onReceivedTitle(Lorg/lasque/tusdk/core/view/TuSdkWebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
