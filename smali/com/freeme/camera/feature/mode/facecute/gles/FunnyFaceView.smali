.class public Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;
.super Ljava/lang/Object;
.source "FunnyFaceView.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/facecute/gles/GLAppListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;,
        Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;,
        Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;,
        Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;
    }
.end annotation


# static fields
.field private static final FACE_MAX_SIZE:I = 0x15e

.field private static final FACE_MIN_SIZE:I = 0x50

.field private static final FACE_PRIM_SIZE:F = 226.0f

.field private static final TAG:Ljava/lang/String; = "FunnyFaceView"


# instance fields
.field protected deltaTime:F

.field protected lastFrameTime:J

.field private mApp:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;

.field private mBeautyView:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

.field private mBitmapFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private mCallback:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;

.field private mCamera:Lcom/freeme/camera/CameraActivity;

.field private mCurrItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDensity:F

.field private mEffect:Ljava/lang/String;

.field private mFaceMaxSizePx:I

.field private mFaceMinSizePx:I

.field private mFacePrimSize:F

.field private mHeight:I

.field private volatile mIsDispose:Z

.field private mIsNeedCapture:Z

.field private volatile mIsShowing:Z

.field private volatile mIsSwitching:Z

.field private mLockObj:Ljava/lang/Object;

.field private mShapeRender:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field private mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private mStateTime:F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "gdx"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->lastFrameTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->deltaTime:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsSwitching:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsDispose:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsShowing:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mLockObj:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mEffect:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCamera:Lcom/freeme/camera/CameraActivity;

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;

    invoke-direct {v0, p1, p0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/ApplicationListener;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mApp:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mApp:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mApp:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mApp:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mApp:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v0, 0x15e

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mFaceMaxSizePx:I

    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->dpToPixel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mFaceMinSizePx:I

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCamera:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mDensity:F

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->disposeResWithoutInfoLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->disposeCreateRes()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mEffect:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->switchEffect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCallback:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;

    return-object p0
.end method

.method private static arraysToArray([[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    aget-object v2, p0, v1

    array-length v2, v2

    if-nez v2, :cond_0

    array-length v0, p0

    :cond_0
    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    move v4, v3

    move v3, v1

    :goto_1
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    aget-object v6, p0, v2

    aget-object v6, v6, v3

    aput-object v6, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private computeAnchorInfo(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;FI)Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;
    .locals 8

    iget-object p3, p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->referPoint:Ljava/lang/String;

    invoke-direct {p0, p3, p2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->getAnchorXY(Ljava/lang/String;Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;)Landroid/graphics/PointF;

    move-result-object p2

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget p2, p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->anchorXOffset:I

    int-to-float p2, p2

    iget p3, p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->anchorYOffset:I

    int-to-float p3, p3

    iget v0, p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->anchorCXOffset:I

    int-to-float v6, v0

    iget v0, p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->anchorCYOffset:I

    int-to-float v7, v0

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    const/16 v1, 0x5a

    if-eq p4, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p4, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p4, v1, :cond_0

    move v4, v0

    move v5, v4

    goto :goto_0

    :cond_0
    neg-float p2, p2

    move v5, p2

    move v4, p3

    goto :goto_0

    :cond_1
    neg-float p2, p2

    neg-float p3, p3

    move v4, p2

    move v5, p3

    goto :goto_0

    :cond_2
    neg-float p3, p3

    move v5, p2

    move v4, p3

    goto :goto_0

    :cond_3
    move v4, p2

    move v5, p3

    :goto_0
    iget-object p1, p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->referPoint:Ljava/lang/String;

    const-string p2, "standard"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;

    const/4 v1, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;-><init>(ZFFFFFF)V

    return-object p1

    :cond_4
    new-instance p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;

    const/4 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;-><init>(ZFFFFFF)V

    return-object p1
.end method

.method private disposeCreateRes()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mShapeRender:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->dispose()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mShapeRender:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mBitmapFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mBitmapFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    :cond_2
    return-void
.end method

.method private disposeResWithoutInfoLock()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCurrItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;

    iget-object v3, v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->textureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->textureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-object v2, v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->textureList:Ljava/util/List;

    iget-object v3, v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->resNameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-object v2, v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->resNameList:Ljava/util/List;

    iput-object v2, v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->anim:Lcom/badlogic/gdx/graphics/g2d/Animation;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCurrItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCurrItemList:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method private drawElements(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;FIF)V
    .locals 16

    move-object/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v10, v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v11, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v10, v3

    iget v5, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->center_x_offset:F

    add-float v8, v4, v5

    div-float v3, v11, v3

    iget v5, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->center_y_offset:F

    add-float v9, v3, v5

    iget v5, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->x:F

    iget v6, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->x_offset:F

    mul-float v6, v6, p3

    add-float/2addr v5, v6

    iget v6, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->y:F

    iget v7, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->y_offset:F

    mul-float v7, v7, p3

    add-float/2addr v6, v7

    iget v7, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->x_offset:F

    const/4 v12, 0x0

    cmpl-float v7, v7, v12

    if-nez v7, :cond_0

    iget v7, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->y_offset:F

    cmpl-float v7, v7, v12

    if-eqz v7, :cond_1

    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iget v13, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->x:F

    iget v14, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->y:F

    invoke-virtual {v7, v2, v13, v14}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v5, v13, v14

    const/4 v5, 0x1

    aput v6, v13, v5

    invoke-virtual {v7, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v6, v13, v14

    aget v5, v13, v5

    move v15, v6

    move v6, v5

    move v5, v15

    :cond_1
    sub-float/2addr v5, v4

    iget v4, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->center_x_offset:F

    sub-float/2addr v5, v4

    sub-float/2addr v6, v3

    iget v3, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->center_y_offset:F

    sub-float/2addr v6, v3

    iget-boolean v0, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->normal_draw:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    move v13, v0

    move v6, v12

    move v7, v6

    goto :goto_0

    :cond_2
    move/from16 v13, p3

    move v7, v6

    move v6, v5

    :goto_0
    int-to-float v0, v1

    add-float v14, v0, v2

    const-string v0, "FunnyFaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawElements x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",orignX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",orignY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "orignW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",orignH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",scale:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",angle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",currRegion:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object/from16 v5, p1

    move v12, v13

    invoke-virtual/range {v4 .. v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    return-void
.end method

.method private drawItem(FIFLcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;)V
    .locals 11

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCurrItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;

    iget-object v2, v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->anim:Lcom/badlogic/gdx/graphics/g2d/Animation;

    iget v3, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mStateTime:F

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(FZ)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    invoke-direct {p0, v1, p4, p1, p2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->computeAnchorInfo(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;FI)Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;

    move-result-object v7

    move-object v5, p0

    move v8, p1

    move v9, p2

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->drawElements(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;FIF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAnchorXY(Ljava/lang/String;Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;)Landroid/graphics/PointF;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCamera:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v2, "leftEye"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightEye:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftEye:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_0

    :cond_2
    const-string v2, "rightEye"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftEye:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightEye:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "nose"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mNose:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "leftMouth"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftMouth:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    if-eqz v0, :cond_6

    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightMouth:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_6
    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftMouth:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_7
    const-string v2, "rightMouth"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v0, :cond_8

    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightMouth:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_8
    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftMouth:Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_9
    const-string v0, "eyesCenter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_a

    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftEye:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightEye:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v0

    div-float/2addr p1, v2

    iget-object v0, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftEye:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object p2, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightEye:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p2

    div-float/2addr v0, v2

    invoke-virtual {v1, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_a
    const-string v0, "mouthCenter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftMouth:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightMouth:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v0

    div-float/2addr p1, v2

    iget-object v0, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftMouth:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object p2, p2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightMouth:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p2

    div-float/2addr v0, v2

    invoke-virtual {v1, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    :cond_b
    :goto_0
    return-object v1

    :cond_c
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getFacePrimSize(Ljava/lang/String;Ljava/lang/String;)F
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\t"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FunnyFaceView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spiltItemInfoDatas( e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private getHasVirtualKeyHeight()I
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCamera:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.view.Display"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getRealMetrics"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v2
.end method

.method private getHasVirtualKeyWidth()I
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCamera:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.view.Display"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getRealMetrics"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v2
.end method

.method private static getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    throw p0

    :catch_2
    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleRGB565Data()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mHeight:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->getJpegDataFromGpu565(IIII)[I

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "ffbcapture"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPixel spent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCamera:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getWorkerHandler()Lcom/freeme/camera/CameraActivity$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;-><init>(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static readAssertResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private switchEffect(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mBeautyView:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;-><init>(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;I)V

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mBeautyView:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-virtual {v4, v3}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mLockObj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "ffboptimize"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wait DESTRORY_TEXTURE_COMMAND exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "ffboptimize"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose spent time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/params.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCamera:Lcom/freeme/camera/CameraActivity;

    invoke-static {v3, v2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->readAssertResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/attribute.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCamera:Lcom/freeme/camera/CameraActivity;

    invoke-static {v4, v3}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->readAssertResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "ffboptimize"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readAssertResource spent time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v0

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->spiltItemInfoDatas(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCurrItemList:Ljava/util/ArrayList;

    const-string p1, "facePrimSize"

    invoke-static {p1, v3}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->getFacePrimSize(Ljava/lang/String;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mFacePrimSize:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p1, "ffboptimize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spiltItemInfoDatas spent time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsSwitching:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public capture()V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsNeedCapture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsNeedCapture:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->handleRGB565Data()V

    :cond_0
    return-void
.end method

.method public create()V
    .locals 0

    return-void
.end method

.method public create(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mBeautyView:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mShapeRender:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mBitmapFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mBitmapFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mStateTime:F

    return-void
.end method

.method public dispose()V
    .locals 2

    const-string v0, "lucy"

    const-string v1, "FunnyFaceView dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->disposeRes(Z)V

    return-void
.end method

.method public disposeInGlThread()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsDispose:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->disposeResWithoutInfoLock()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->disposeCreateRes()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsDispose:Z

    return-void
.end method

.method public disposeRes(Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsDispose:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;

    invoke-direct {v2, p0, v0, p1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;-><init>(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;IZ)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mBeautyView:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mBeautyView:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mLockObj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "ffboptimize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wait disposeRes exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string p1, ""

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mEffect:Ljava/lang/String;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsDispose:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mHeight:I

    return v0
.end method

.method public getJpegDataFromGpu565(IIII)[I
    .locals 9

    mul-int v0, p3, p4

    mul-int/lit8 v1, v0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v8, v1

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    new-array p1, v0, [I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object p1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mWidth:I

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsShowing:Z

    return-void
.end method

.method public isSwitching()Z
    .locals 3

    const-string v0, "ffboptimize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsSwitching:Z

    return v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public render()V
    .locals 0

    return-void
.end method

.method public render(F[Lorg/lasque/tusdk/core/face/FaceAligment;)V
    .locals 10

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsShowing:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsSwitching:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsDispose:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->lastFrameTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->deltaTime:F

    iput-wide v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->lastFrameTime:J

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mStateTime:F

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->deltaTime:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mStateTime:F

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    array-length v1, p2

    if-lez v1, :cond_4

    const/4 v1, 0x0

    aget-object v2, p2, v1

    iget-object v2, v2, Lorg/lasque/tusdk/core/face/FaceAligment;->rect:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->getHasVirtualKeyWidth()I

    move-result v4

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->getHasVirtualKeyHeight()I

    move-result v5

    int-to-float v4, v4

    neg-int v6, v5

    int-to-float v6, v6

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mFaceMinSizePx:I

    if-lt v4, v7, :cond_3

    iget v7, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mFaceMaxSizePx:I

    if-gt v4, v7, :cond_3

    int-to-float v6, v6

    const/high16 v7, 0x428c0000    # 70.0f

    iget v8, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mDensity:F

    mul-float/2addr v8, v7

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v6, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;

    invoke-direct {v6}, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;-><init>()V

    iget-object v7, v6, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    aget-object v7, p2, v1

    iget-object v7, v7, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    const/16 v8, 0x28

    aget-object v7, v7, v8

    iget v8, v7, Landroid/graphics/PointF;->x:F

    aput v8, v2, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v2, v0

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v7, v6, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftEye:Landroid/graphics/PointF;

    aget v8, v2, v1

    aget v9, v2, v0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    aget-object v7, p2, v1

    iget-object v7, v7, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    const/16 v8, 0x2e

    aget-object v7, v7, v8

    iget v8, v7, Landroid/graphics/PointF;->x:F

    aput v8, v2, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v2, v0

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v7, v6, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightEye:Landroid/graphics/PointF;

    aget v8, v2, v1

    aget v9, v2, v0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    aget-object v7, p2, v1

    iget-object v7, v7, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    const/16 v8, 0x1e

    aget-object v7, v7, v8

    iget v8, v7, Landroid/graphics/PointF;->x:F

    aput v8, v2, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v2, v0

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v7, v6, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mNose:Landroid/graphics/PointF;

    aget v8, v2, v1

    aget v9, v2, v0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    aget-object v7, p2, v1

    iget-object v7, v7, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    const/16 v8, 0x30

    aget-object v7, v7, v8

    iget v8, v7, Landroid/graphics/PointF;->x:F

    aput v8, v2, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v2, v0

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v7, v6, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftMouth:Landroid/graphics/PointF;

    aget v8, v2, v1

    aget v9, v2, v0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    aget-object v7, p2, v1

    iget-object v7, v7, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    const/16 v8, 0x36

    aget-object v7, v7, v8

    iget v8, v7, Landroid/graphics/PointF;->x:F

    aput v8, v2, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v2, v0

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v3, v6, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightMouth:Landroid/graphics/PointF;

    aget v7, v2, v1

    aget v0, v2, v0

    invoke-virtual {v3, v7, v0}, Landroid/graphics/PointF;->set(FF)V

    aget-object v0, p2, v1

    iget v0, v0, Lorg/lasque/tusdk/core/face/FaceAligment;->roll:F

    iput v0, v6, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->x_angle:F

    aget-object v0, p2, v1

    iget v0, v0, Lorg/lasque/tusdk/core/face/FaceAligment;->yaw:F

    iput v0, v6, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->y_angle:F

    aget-object p2, p2, v1

    iget p2, p2, Lorg/lasque/tusdk/core/face/FaceAligment;->pitch:F

    iput p2, v6, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->z_angle:F

    iget p2, v6, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->x_angle:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mFacePrimSize:F

    cmpl-float p2, p2, v5

    if-nez p2, :cond_2

    const/high16 p2, 0x43620000    # 226.0f

    iput p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mFacePrimSize:F

    :cond_2
    int-to-float p2, v4

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mFacePrimSize:F

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-direct {p0, p2, v1, p1, v6}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->drawItem(FIFLcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCamera:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/CameraActivity;->showOrNotFFBNoFaceIndicator(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCamera:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/CameraActivity;->showOrNotFFBNoFaceIndicator(Z)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCamera:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/CameraActivity;->showOrNotFFBNoFaceIndicator(Z)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public resize(II)V
    .locals 1

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mHeight:I

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    instance-of p1, p1, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    check-cast p1, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;

    iget p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mWidth:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;->resize(II)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setFunnyPictureCallback(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mCallback:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsShowing:Z

    return-void
.end method

.method public spiltItemInfoDatas(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    const-string v0, " "

    const-string v4, ""

    move-object/from16 v5, p2

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\t"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "FunnyFaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "itemList"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_4

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;

    invoke-direct {v9}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;-><init>()V

    const-string v0, "resClipWidth"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->resClipWidth:I

    const-string v0, "resClipHeight"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->resClipHeight:I

    const-string v0, "referPoint"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->referPoint:Ljava/lang/String;

    const-string v0, "anchorCXOffset"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->anchorCXOffset:I

    const-string v0, "anchorCYOffset"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->anchorCYOffset:I

    const-string v0, "anchorXOffset"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->anchorXOffset:I

    const-string v0, "anchorYOffset"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->anchorYOffset:I

    const-string v0, "frameSumDuration"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->frameSumDuration:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->resNameList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->textureList:Ljava/util/List;

    const-string v0, "resName"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v12, v0, :cond_1

    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "name"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    new-instance v15, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v4

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v15, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v6, "ffboptimize"

    move-object/from16 v17, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v7

    const-string v7, "new Pixmap spend:"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",resName:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v6, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v15}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;-><init>(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;ILcom/badlogic/gdx/graphics/Pixmap;)V

    iget-object v7, v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mLockObj:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v10, v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mBeautyView:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-virtual {v10, v6}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->queueEvent(Ljava/lang/Runnable;)V

    const-string v10, "ffboptimize"

    const-string v13, "waiting"

    invoke-static {v10, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v10, v1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mLockObj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-string v7, "ffboptimize"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "new Texture spend:"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v13, v3

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v7, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->resClipWidth:I

    iget v10, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->resClipHeight:I

    invoke-static {v6, v7, v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->split(Lcom/badlogic/gdx/graphics/Texture;II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    invoke-static {v7}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->arraysToArray([[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-string v10, "ffboptimize"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "split texture spend:"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v13, v3

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->resNameList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->textureList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    const-string v1, "ffboptimize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v16

    move-object/from16 v10, v17

    move/from16 v7, v18

    move-object/from16 v1, p0

    const/4 v3, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :cond_1
    move-object/from16 v16, v4

    move/from16 v18, v7

    const-string v0, "isRepeated"

    const/4 v7, 0x0

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "repeatInfo"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v3, "ffboptimize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repeatInfo leghth:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    move v4, v3

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "repeatCount"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v10, "repeatStartIndex"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v12, "repeatEndIndex"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    sub-int v12, v6, v10

    invoke-interface {v1, v10, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    move v13, v7

    :goto_4
    if-ge v13, v8, :cond_2

    add-int v14, v4, v10

    mul-int v15, v13, v12

    add-int/2addr v14, v15

    invoke-interface {v11, v14, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_2
    mul-int/2addr v12, v8

    add-int/2addr v4, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    check-cast v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->frameSumDuration:I

    int-to-float v1, v1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    array-length v3, v0

    int-to-float v3, v3

    div-float/2addr v1, v3

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/Animation;

    invoke-direct {v3, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/Animation;-><init>(F[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v3, v9, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$ItemInfo;->anim:Lcom/badlogic/gdx/graphics/g2d/Animation;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v0, v18, 0x1

    move v7, v0

    move-object/from16 v4, v16

    move-object/from16 v1, p0

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    return-object v5

    :catch_1
    move-exception v0

    const-string v1, "ffboptimize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spiltItemInfoDatas( e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public switchEffectInWorkThread(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsSwitching:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mEffect:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsSwitching:Z

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mEffect:Ljava/lang/String;

    new-instance p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$1;

    const-string v0, "switch effect"

    invoke-direct {p1, p0, v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$1;-><init>(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public takePicture()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->mIsNeedCapture:Z

    return-void
.end method
