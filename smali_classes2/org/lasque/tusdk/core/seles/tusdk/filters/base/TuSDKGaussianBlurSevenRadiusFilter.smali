.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurSevenRadiusFilter;
.super Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "-sgv7"

    const-string v1, "-sgf7"

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static hardware(Z)Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->lowPerformance()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurSevenRadiusFilter;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurSevenRadiusFilter;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;-><init>(Z)V

    return-object p0
.end method
