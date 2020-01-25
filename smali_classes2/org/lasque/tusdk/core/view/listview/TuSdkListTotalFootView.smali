.class public abstract Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getTitleFormater()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->a:I

    return v0
.end method

.method public abstract getWrapView()Landroid/widget/RelativeLayout;
.end method

.method public loadView()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->loadView()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->getWrapView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->c:I

    return-void
.end method

.method public needShowFooter(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->getWrapView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->c:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->getWrapView()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitleFormater(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->b:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->a:I

    return-void
.end method
