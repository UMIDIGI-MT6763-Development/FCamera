.class public Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar;
.super Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_view_widget_navigator"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar;->getTextViewText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadView()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->loadView()V

    const-string v0, "lsq_titleView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar;->a:Landroid/widget/TextView;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
