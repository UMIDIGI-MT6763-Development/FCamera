.class public Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TuSdkWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TuSdkWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TuSdkWebView;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/view/TuSdkWebView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->a(Lorg/lasque/tusdk/core/view/TuSdkWebView;Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1, v0, p2}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;->onPageFinished(Lorg/lasque/tusdk/core/view/TuSdkWebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->a(Lorg/lasque/tusdk/core/view/TuSdkWebView;Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1, v0, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;->onPageStarted(Lorg/lasque/tusdk/core/view/TuSdkWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p1, "TuSdkWebView onReceivedError: %s | url: %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v2, 0x1

    aput-object p4, v0, v2

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->a(Lorg/lasque/tusdk/core/view/TuSdkWebView;Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1, v0, p2, p3, p4}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;->onReceivedError(Lorg/lasque/tusdk/core/view/TuSdkWebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-virtual {p1, v0, p2}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;->shouldOverrideUrlLoading(Lorg/lasque/tusdk/core/view/TuSdkWebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
