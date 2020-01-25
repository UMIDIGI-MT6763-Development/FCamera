.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterTexturesInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;
    }
.end annotation


# instance fields
.field private a:F

.field private final b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

.field private c:Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->a:F

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurSevenRadiusFilter;->hardware(Z)Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    new-instance v1, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->c:Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->c:Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->c:Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    new-array v0, v0, [Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->setInitialFilters([Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->c:Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->setTerminalFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->a:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->setMix(F)V

    return-void
.end method


# virtual methods
.method public appendTextures(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->c:Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter$_TuSDKArtBrushFilter;

    invoke-virtual {v2, v3, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMix()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->a:F

    return v0
.end method

.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 4

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "mixied"

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->a:F

    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    return-object p1
.end method

.method public setMix(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->a:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;->setBlurSize(F)V

    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "mixied"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;->setMix(F)V

    :cond_1
    return-void
.end method
