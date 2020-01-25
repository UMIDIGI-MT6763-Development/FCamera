.class public Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllBrushSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->SmallBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->MediumBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->LargeBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getBrushValue(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)D
    .locals 5

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$1;->a:[I

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide v1, 0x3fc999999999999aL    # 0.2

    const-wide v3, 0x3fc3333333333333L    # 0.15

    packed-switch v0, :pswitch_data_0

    return-wide v3

    :pswitch_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->getCustomizeBrushValue()F

    move-result p0

    float-to-double v3, p0

    mul-double/2addr v3, v1

    return-wide v3

    :pswitch_1
    const-wide v0, 0x3fb999999999999aL    # 0.1

    return-wide v0

    :pswitch_2
    return-wide v3

    :pswitch_3
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static nameForSize(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize;->getAllBrushSizes()Ljava/util/List;

    move-result-object v0

    const-string v1, "small"

    const-string v2, "medium"

    const-string v3, "large"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p0, v3, :cond_0

    aget-object p0, v1, v2

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static nextBrushSize(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;
    .locals 4

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize;->getAllBrushSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p0, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p0, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p0, v2, :cond_2

    move p0, v1

    :cond_2
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    return-object p0
.end method
