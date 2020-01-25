.class public Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;
.super Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_view_widget_actionsheet"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAlphaAnimType()Lorg/lasque/tusdk/core/type/ActivityAnimType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->fade:Lorg/lasque/tusdk/impl/TuAnimType;

    return-object v0
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->d:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v0, "lsq_cancelButton"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->d:Landroid/widget/Button;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->d:Landroid/widget/Button;

    return-object v0
.end method

.method public getMaskBg()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "lsq_maskBg"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->a:Landroid/view/View;

    return-object v0
.end method

.method public getSheetTable()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v0, "lsq_sheetTable"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->b:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "lsq_titleView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->c:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTransAnimType()Lorg/lasque/tusdk/core/type/ActivityAnimType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->upDownSub:Lorg/lasque/tusdk/impl/TuAnimType;

    return-object v0
.end method
