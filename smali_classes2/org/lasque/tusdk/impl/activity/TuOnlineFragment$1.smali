.class Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$1;
.super Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lorg/lasque/tusdk/core/view/TuSdkWebView;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->a(Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;Z)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:clientBridge.getHandlers().onTuSdkSend("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->getPageFinishedData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->setWebPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Lorg/lasque/tusdk/core/view/TuSdkWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->a(Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;Z)Z

    return-void
.end method

.method public onReceivedTitle(Lorg/lasque/tusdk/core/view/TuSdkWebView;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method
