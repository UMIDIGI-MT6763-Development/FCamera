.class public Lorg/lasque/tusdk/core/struct/ViewSize;
.super Lorg/lasque/tusdk/core/struct/TuSdkSize;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/struct/ViewSize;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/struct/ViewSize;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lorg/lasque/tusdk/core/struct/ViewSize;->width:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lorg/lasque/tusdk/core/struct/ViewSize;->width:I

    :cond_2
    iget v0, p0, Lorg/lasque/tusdk/core/struct/ViewSize;->height:I

    if-ge v0, v1, :cond_3

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lorg/lasque/tusdk/core/struct/ViewSize;->height:I

    :cond_3
    return-void
.end method

.method public static create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/struct/ViewSize;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/struct/ViewSize;-><init>(Landroid/view/View;)V

    return-object v0
.end method
