.class public Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;
.super Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_view_widget_progress_hud_view"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getHubView()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v0, "lsq_hubView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->c:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getImageFailedResId()I
    .locals 1

    const-string v0, "lsq_style_default_hud_error"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getDrawableResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getImageSucceedResId()I
    .locals 1

    const-string v0, "lsq_style_default_hud_success"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getDrawableResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v0, "lsq_hubImageView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->d:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->a:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v0, "lsq_progressBar"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->a:Landroid/widget/ProgressBar;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "lsq_hubTitleView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->b:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->b:Landroid/widget/TextView;

    return-object v0
.end method
