.class Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/UUID;

.field private static final b:Ljava/util/UUID;

.field private static final c:Ljava/util/UUID;

.field private static d:[Landroid/media/audiofx/AudioEffect$Descriptor;


# instance fields
.field private e:Landroid/media/audiofx/AcousticEchoCanceler;

.field private f:Landroid/media/audiofx/AutomaticGainControl;

.field private g:Landroid/media/audiofx/NoiseSuppressor;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "bb392ec0-8d4d-11e0-a896-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->a:Ljava/util/UUID;

    const-string v0, "aa8130e0-66fc-11e0-bad0-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->b:Ljava/util/UUID;

    const-string v0, "c06c8400-8e06-11e0-9cb6-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->c:Ljava/util/UUID;

    const/4 v0, 0x0

    sput-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->d:[Landroid/media/audiofx/AudioEffect$Descriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->e:Landroid/media/audiofx/AcousticEchoCanceler;

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->f:Landroid/media/audiofx/AutomaticGainControl;

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->g:Landroid/media/audiofx/NoiseSuppressor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->h:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->i:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->j:Z

    return-void
.end method

.method static a()Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffectUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "API level 16 or higher is required!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;-><init>()V

    return-object v0
.end method

.method private static a(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private static a(Ljava/util/UUID;)Z
    .locals 5

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->h()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v4, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static b()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->h()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v5, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->a:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "the platform AEC should be excluded based on its UUID"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static c()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->h()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v5, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->b:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static canUseAcousticEchoCanceler()Z
    .locals 4

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffectUtils;->useBasedAcousticEchoCanceler()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->isAcousticEchoCancelerBlacklisted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canUseAcousticEchoCanceler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static canUseAutomaticGainControl()Z
    .locals 4

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->isAutomaticGainControlSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffectUtils;->useBasedAutomaticGainControl()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->isAutomaticGainControlBlacklisted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canUseAutomaticGainControl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static canUseNoiseSuppressor()Z
    .locals 4

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffectUtils;->useBasedNoiseSuppressor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->isNoiseSuppressorBlacklisted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canUseNoiseSuppressor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private static d()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->h()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v5, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->c:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static e()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-static {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->a(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private static f()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    invoke-static {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->a(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private static g()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    invoke-static {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->a(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private static h()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->d:[Landroid/media/audiofx/AudioEffect$Descriptor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->d:[Landroid/media/audiofx/AudioEffect$Descriptor;

    sget-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->d:[Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static isAcousticEchoCancelerBlacklisted()Z
    .locals 3

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffectUtils;->getBlackListedModelsForAecUsage()Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is blacklisted for HW AEC usage!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public static isAcousticEchoCancelerSupported()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffectUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutomaticGainControlBlacklisted()Z
    .locals 3

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffectUtils;->getBlackListedModelsForAgcUsage()Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is blacklisted for HW AGC usage!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public static isAutomaticGainControlSupported()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffectUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNoiseSuppressorBlacklisted()Z
    .locals 6

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffectUtils;->getBlackListedModelsForNsUsage()Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "TuSDKAudioEffects"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is blacklisted for HW NS usage!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public static isNoiseSuppressorSupported()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffectUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public enable(I)V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->e:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->a(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->f:Landroid/media/audiofx/AutomaticGainControl;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->a(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->g:Landroid/media/audiofx/NoiseSuppressor;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->a(Z)V

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->e:Landroid/media/audiofx/AcousticEchoCanceler;

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->e:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->h:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iget-object v3, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->e:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v3, v0}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Failed to set the AcousticEchoCanceler state"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AcousticEchoCanceler: is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->e:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v3}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "enabled"

    goto :goto_4

    :cond_5
    const-string v3, "disabled"

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    const-string v0, "Failed to create the AcousticEchoCanceler instance"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_5
    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->isAutomaticGainControlSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->f:Landroid/media/audiofx/AutomaticGainControl;

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->f:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->getEnabled()Z

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->i:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->canUseAutomaticGainControl()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v2

    :goto_6
    iget-object v3, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->f:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v3, v0}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Failed to set the AutomaticGainControl state"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutomaticGainControl: is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->f:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v3}, Landroid/media/audiofx/AutomaticGainControl;->getEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "enabled"

    goto :goto_7

    :cond_a
    const-string v3, "disabled"

    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_b
    const-string v0, "Failed to create the AutomaticGainControl instance"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_8
    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->g:Landroid/media/audiofx/NoiseSuppressor;

    iget-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->g:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->j:Z

    if-eqz p1, :cond_d

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->canUseNoiseSuppressor()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_9

    :cond_d
    move v1, v2

    :goto_9
    iget-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->g:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {p1, v1}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "Failed to set the NoiseSuppressor state"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NoiseSuppressor: is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->g:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "enabled"

    goto :goto_a

    :cond_f
    const-string v0, "disabled"

    :goto_a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_10
    const-string p1, "Failed to create the NoiseSuppressor instance"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :goto_b
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->e:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->e:Landroid/media/audiofx/AcousticEchoCanceler;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->f:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->f:Landroid/media/audiofx/AutomaticGainControl;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->g:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->g:Landroid/media/audiofx/NoiseSuppressor;

    :cond_2
    return-void
.end method

.method public setAEC(Z)Z
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Platform AEC is not supported"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->h:Z

    return v1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->e:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->h:Z

    if-eq p1, v0, :cond_1

    const-string p1, "Platform AEC state can\'t be modified while recording"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->h:Z

    const/4 p1, 0x1

    return p1
.end method

.method public setAGC(Z)Z
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->canUseAutomaticGainControl()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Platform AGC is not supported"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->i:Z

    return v1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->f:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->i:Z

    if-eq p1, v0, :cond_1

    const-string p1, "Platform AGC state can\'t be modified while recording"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->i:Z

    const/4 p1, 0x1

    return p1
.end method

.method public setNS(Z)Z
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->canUseNoiseSuppressor()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Platform NS is not supported"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->j:Z

    return v1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->g:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->j:Z

    if-eq p1, v0, :cond_1

    const-string p1, "Platform NS state can\'t be modified while recording"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->j:Z

    const/4 p1, 0x1

    return p1
.end method
