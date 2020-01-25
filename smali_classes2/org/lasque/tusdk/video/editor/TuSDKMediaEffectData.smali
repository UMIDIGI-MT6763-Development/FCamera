.class public abstract Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->a:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->b:Z

    return-void
.end method


# virtual methods
.method public getAtTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object v0
.end method

.method public final isApplyed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->a:Z

    return v0
.end method

.method public final isVaild()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->b:Z

    return v0
.end method

.method public setAtTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-void
.end method

.method protected final setIsApplyed(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->a:Z

    return-void
.end method

.method protected final setVaild(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->b:Z

    return-void
.end method

.method public validateTimeRange()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->getAtTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->getAtTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
