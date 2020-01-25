.class public Lorg/lasque/tusdk/core/activity/TuSdkActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->loadView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewById(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getIDResId(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkActivity;->getViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkActivity;->initView()V

    return-void
.end method
