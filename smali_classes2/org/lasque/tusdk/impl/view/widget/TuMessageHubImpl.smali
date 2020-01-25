.class public Lorg/lasque/tusdk/impl/view/widget/TuMessageHubImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToViewWithNavigationBarHidden(Z)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->applyToViewWithNavigationBarHidden(Z)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    :try_start_0
    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dismissRightNow()V
    .locals 1

    :try_start_0
    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->dismissRightNow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setStatus(Landroid/content/Context;I)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->setStatus(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->setStatus(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showError(Landroid/content/Context;I)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showError(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showSuccess(Landroid/content/Context;I)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showSuccess(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showToast(Landroid/content/Context;I)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showToast(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
