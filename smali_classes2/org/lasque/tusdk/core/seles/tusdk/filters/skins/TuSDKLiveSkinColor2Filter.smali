.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKLiveSkinColor2Filter;
.super Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isEnableFacePlastic()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->isFaceBeautySupported()Z

    move-result v0

    return v0
.end method
