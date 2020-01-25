.class public Lcom/badlogic/gdx/graphics/g2d/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    }
.end annotation


# instance fields
.field private animationDuration:F

.field private frameDuration:F

.field final keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private lastFrameNumber:I

.field private lastStateTime:F

.field private playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;


# direct methods
.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    iget p1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array p1, p1, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget p1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    iget p1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array p1, p1, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget p1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-void
.end method

.method public varargs constructor <init>(F[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    array-length v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-void
.end method


# virtual methods
.method public getAnimationDuration()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    return v0
.end method

.method public getFrameDuration()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    return v0
.end method

.method public getKeyFrame(F)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrameIndex(F)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getKeyFrame(FZ)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eqz p2, :cond_2

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-ne p2, v1, :cond_1

    sget-object p2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq p2, v1, :cond_4

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq p2, v1, :cond_4

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-ne p2, v1, :cond_3

    sget-object p2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(F)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-object p1
.end method

.method public getKeyFrameIndex(F)I
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float v0, p1, v0

    float-to-int v0, v0

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/Animation$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$Animation$PlayMode:[I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v3, v1

    rem-int/2addr v0, v3

    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v3, v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastStateTime:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastFrameNumber:I

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x2

    rem-int/2addr v0, v2

    array-length v2, v1

    if-lt v0, v2, :cond_2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    array-length v1, v1

    sub-int/2addr v0, v1

    sub-int v0, v2, v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastFrameNumber:I

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastStateTime:F

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyFrames()[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getPlayMode()Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-object v0
.end method

.method public isAnimationFinished(F)Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setFrameDuration(F)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    return-void
.end method

.method public setPlayMode(Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-void
.end method
