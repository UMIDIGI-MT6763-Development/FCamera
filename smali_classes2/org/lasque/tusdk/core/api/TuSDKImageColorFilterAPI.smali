.class public final Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;
.super Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;


# static fields
.field public static final KEY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final KEY_CONTRAST:Ljava/lang/String; = "contrast"

.field public static final KEY_EXPOSURE:Ljava/lang/String; = "exposure"

.field public static final KEY_HIGHLIGHTS:Ljava/lang/String; = "highlights"

.field public static final KEY_SATURATION:Ljava/lang/String; = "saturation"

.field public static final KEY_SHADOWS:Ljava/lang/String; = "shadows"

.field public static final KEY_TEMPERATURE:Ljava/lang/String; = "temperature"


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI$1;-><init>(Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;)V

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->isInternal:Z

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->creat(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-object v0
.end method

.method public setBrightnessPrecentValue(F)V
    .locals 1

    const-string v0, "brightness"

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;->setFilterArgPrecentValue(Ljava/lang/String;F)Z

    return-void
.end method

.method public setContrastPrecentValue(F)V
    .locals 1

    const-string v0, "contrast"

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;->setFilterArgPrecentValue(Ljava/lang/String;F)Z

    return-void
.end method

.method public setExposurePrecentValue(F)V
    .locals 1

    const-string v0, "exposure"

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;->setFilterArgPrecentValue(Ljava/lang/String;F)Z

    return-void
.end method

.method public setHighlightsPrecentValue(F)V
    .locals 1

    const-string v0, "highlights"

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;->setFilterArgPrecentValue(Ljava/lang/String;F)Z

    return-void
.end method

.method public setSaturationPrecentValue(F)V
    .locals 1

    const-string v0, "saturation"

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;->setFilterArgPrecentValue(Ljava/lang/String;F)Z

    return-void
.end method

.method public setShadowsPrecentValue(F)V
    .locals 1

    const-string v0, "shadows"

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;->setFilterArgPrecentValue(Ljava/lang/String;F)Z

    return-void
.end method

.method public setTemperaturePrecentValue(F)V
    .locals 1

    const-string v0, "temperature"

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;->setFilterArgPrecentValue(Ljava/lang/String;F)Z

    return-void
.end method
