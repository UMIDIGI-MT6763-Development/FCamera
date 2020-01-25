.class public Lcom/freeme/camera/common/OnScreenToast;
.super Ljava/lang/Object;
.source "OnScreenToast.java"


# static fields
.field private static toast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelToast()V
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/OnScreenToast;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public static getToast()Landroid/widget/Toast;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/OnScreenToast;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/freeme/camera/common/OnScreenToast;->toast:Landroid/widget/Toast;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "freeme_on_screen_hint"

    const-string v3, "layout"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/freeme/camera/common/R$id;->message:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p1, Lcom/freeme/camera/common/OnScreenToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object p0, Lcom/freeme/camera/common/OnScreenToast;->toast:Landroid/widget/Toast;

    const/16 p1, 0x30

    const/4 v0, 0x0

    const/16 v1, 0xa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    sget-object p0, Lcom/freeme/camera/common/OnScreenToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sget-object p0, Lcom/freeme/camera/common/OnScreenToast;->toast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static show()V
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/OnScreenToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
