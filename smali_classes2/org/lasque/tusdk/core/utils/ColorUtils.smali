.class public Lorg/lasque/tusdk/core/utils/ColorUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterColor([FI)I
    .locals 8

    array-length v0, p0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    const-string v0, "%#010x"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aget v6, p0, v2

    float-to-int v6, v6

    invoke-static {v4, v6}, Lorg/lasque/tusdk/core/utils/ColorUtils;->mergerColor(II)I

    move-result v4

    const/16 v6, 0x8

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v7, 0x9

    aget v7, p0, v7

    float-to-int v7, v7

    invoke-static {v0, v7}, Lorg/lasque/tusdk/core/utils/ColorUtils;->mergerColor(II)I

    move-result v0

    const/16 v7, 0xa

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0xe

    aget p0, p0, v6

    float-to-int p0, p0

    invoke-static {v5, p0}, Lorg/lasque/tusdk/core/utils/ColorUtils;->mergerColor(II)I

    move-result p0

    const-string v5, "#%s%02x%02x%02x"

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x2

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v7

    const/4 p1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, p1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/graphics/drawable/ColorDrawable;)I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    return p0
.end method

.method public static mergerColor(II)I
    .locals 0

    add-int/2addr p0, p1

    const/16 p1, 0xff

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method public static setBackgroudImageColor(Landroid/view/View;I)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setColor(Landroid/graphics/drawable/ColorDrawable;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-void
.end method

.method public static setColorFilter(Landroid/graphics/drawable/ColorDrawable;[F)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ColorUtils;->getColor(Landroid/graphics/drawable/ColorDrawable;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/ColorUtils;->filterColor([FI)I

    move-result p1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/ColorUtils;->setColor(Landroid/graphics/drawable/ColorDrawable;I)V

    return-void
.end method
