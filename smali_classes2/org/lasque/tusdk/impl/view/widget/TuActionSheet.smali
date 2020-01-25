.class public Lorg/lasque/tusdk/impl/view/widget/TuActionSheet;
.super Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getActionSheetLayoutId()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/TuActionSheetView;->getLayoutId()I

    move-result v0

    return v0
.end method

.method protected getActionsheetBottomSpace(Z)I
    .locals 1

    const-string v0, "lsq_actionsheet_space_button"

    if-eqz p1, :cond_0

    const-string v0, "lsq_actionsheet_space_bottom"

    :cond_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getDimenOffset(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getActionsheetButtonStyleResId()I
    .locals 1

    const-string v0, "lsq_actionsheetButton"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getStyleResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getButtonBackgroundResId(II)I
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuActionSheet;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "tusdk_view_widget_actionsheet_radius"

    :goto_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getDrawableResId(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuActionSheet;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "tusdk_view_widget_actionsheet_top_radius"

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_2

    const-string p1, "tusdk_view_widget_actionsheet_bottom_radius"

    goto :goto_0

    :cond_2
    const-string p1, "tusdk_view_widget_actionsheet_normal"

    goto :goto_0
.end method

.method protected getButtonColor(I)I
    .locals 2

    const-string v0, "lsq_actionsheet_text_color"

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuActionSheet;->getDestructiveIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    const-string v0, "lsq_actionsheet_text_stress"

    :cond_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
