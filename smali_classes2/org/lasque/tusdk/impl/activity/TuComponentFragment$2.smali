.class Lorg/lasque/tusdk/impl/activity/TuComponentFragment$2;
.super Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/activity/TuComponentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/activity/TuComponentFragment;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/activity/TuComponentFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$2;->a:Lorg/lasque/tusdk/impl/activity/TuComponentFragment;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlertCancel(Landroid/app/AlertDialog;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$2;->a:Lorg/lasque/tusdk/impl/activity/TuComponentFragment;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->dismissActivityWithAnim()V

    return-void
.end method

.method public onAlertConfirm(Landroid/app/AlertDialog;)V
    .locals 4

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v1, "package"

    iget-object v2, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$2;->a:Lorg/lasque/tusdk/impl/activity/TuComponentFragment;

    invoke-virtual {v2}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$2;->a:Lorg/lasque/tusdk/impl/activity/TuComponentFragment;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
