.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSharpenFilter;
.super Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 4

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "sharpness"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSharpenFilter;->getSharpness()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    return-object p1
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "sharpness"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSharpenFilter;->setSharpness(F)V

    :cond_1
    return-void
.end method
