.class public Lcom/freeme/camera/util/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field public static final KEY_TREAT_UP_AS_BACK:Ljava/lang/String; = "treat-up-as-back"

.field public static final SIZE_FULL:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    instance-of v0, p0, Lcom/freeme/camera/CameraActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, p2}, Lcom/freeme/camera/util/IntentHelper;->getVideoPlayerIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.TITLE"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "treat-up-as-back"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x80000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/freeme/camera/util/IntentHelper;->getVideoPlayerIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.TITLE"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "treat-up-as-back"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f0f01bc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static resizeToFill(IIIII)Landroid/graphics/Point;
    .locals 1

    rem-int/lit16 p2, p2, 0xb4

    if-eqz p2, :cond_0

    move v0, p1

    move p1, p0

    move p0, v0

    :cond_0
    const/4 p2, -0x2

    if-eq p0, p2, :cond_1

    if-ne p1, p2, :cond_2

    :cond_1
    move p0, p3

    move p1, p4

    :cond_2
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput p3, p2, Landroid/graphics/Point;->x:I

    iput p4, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr p4, p0

    mul-int/2addr p3, p1

    if-le p4, p3, :cond_3

    iget p3, p2, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, p3

    div-int/2addr p1, p0

    iput p1, p2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_3
    iget p3, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr p0, p3

    div-int/2addr p0, p1

    iput p0, p2, Landroid/graphics/Point;->x:I

    :goto_0
    return-object p2
.end method
