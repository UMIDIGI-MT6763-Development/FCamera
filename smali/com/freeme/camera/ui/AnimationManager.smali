.class Lcom/freeme/camera/ui/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/AnimationManager$AnimationTask;,
        Lcom/freeme/camera/ui/AnimationManager$AsyncData;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final YUV_SCALE_RATIO:I = 0x2


# instance fields
.field private final mAnimationRoot:Landroid/view/View;

.field private mAnimationTask:Lcom/freeme/camera/ui/AnimationManager$AnimationTask;

.field private final mAnimationView:Landroid/widget/ImageView;

.field private final mApp:Lcom/freeme/camera/common/app/IApp;

.field private final mAppUI:Lcom/freeme/camera/ui/CameraAppUI;

.field private final mCoverView:Landroid/view/View;

.field private mFlipAnimation:Landroid/animation/AnimatorSet;

.field private mSwitchCameraAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/AnimationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput-object p2, p0, Lcom/freeme/camera/ui/AnimationManager;->mAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f09003c

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationRoot:Landroid/view/View;

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f09003d

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f090065

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mCoverView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/AnimationManager;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/AnimationManager;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/ui/AnimationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/AnimationManager;->playSlideAnimation()V

    return-void
.end method

.method static synthetic access$702(Lcom/freeme/camera/ui/AnimationManager;Lcom/freeme/camera/ui/AnimationManager$AnimationTask;)Lcom/freeme/camera/ui/AnimationManager$AnimationTask;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationTask:Lcom/freeme/camera/ui/AnimationManager$AnimationTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/ui/CameraAppUI;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/AnimationManager;->mAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/ui/AnimationManager;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/AnimationManager;->mCoverView:Landroid/view/View;

    return-object p0
.end method

.method private blurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "blurBitmap +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    invoke-static {v1, p1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    invoke-static {v1, v0}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-virtual {v2, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v2, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v4, v0}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    sget-object p1, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "blurBitmap -"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private convertYuvToRGB([BII)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "convertYuvToRGB +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v1

    new-instance v2, Landroid/support/v8/renderscript/Type$Builder;

    sget-object v3, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {v0, v3, v4}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    invoke-virtual {v2, p2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    invoke-virtual {v2, p3}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/Type$Builder;->setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/support/v8/renderscript/Type$Builder;->setYuvFormat(I)Landroid/support/v8/renderscript/Type$Builder;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v8/renderscript/Allocation;->copyFrom([B)V

    new-instance p1, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v5

    invoke-direct {p1, v0, v5}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    invoke-virtual {p1, p2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    invoke-virtual {p1, p3}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    invoke-virtual {p1, v3}, Landroid/support/v8/renderscript/Type$Builder;->setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object p1

    invoke-static {v0, p1, v4}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object p1

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v1, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    sget-object p1, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p3, "convertYuvToRGB -"

    invoke-static {p1, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object p2
.end method

.method private createAnimationBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 9

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAnimationBitmap + isMirror "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p3, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {v7, p3, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_0
    int-to-float p2, p2

    invoke-virtual {v7, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object p2, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p3, "createAnimationBitmap -"

    invoke-static {p2, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private flipAnimationEnd()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mFlipAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flipAnimationEnd  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private flipAnimationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "flipAnimationStart +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/freeme/camera/common/IAppUi$AnimationData;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    new-instance v0, Lcom/freeme/camera/ui/AnimationManager$AsyncData;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/freeme/camera/ui/AnimationManager$AsyncData;-><init>(Lcom/freeme/camera/ui/AnimationManager$1;)V

    iput-object p1, v0, Lcom/freeme/camera/ui/AnimationManager$AsyncData;->mType:Lcom/freeme/camera/common/IAppUi$AnimationType;

    iput-object p2, v0, Lcom/freeme/camera/ui/AnimationManager$AsyncData;->mData:Lcom/freeme/camera/common/IAppUi$AnimationData;

    new-instance p1, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;

    invoke-direct {p1, p0, v2}, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;-><init>(Lcom/freeme/camera/ui/AnimationManager;Lcom/freeme/camera/ui/AnimationManager$1;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationTask:Lcom/freeme/camera/ui/AnimationManager$AnimationTask;

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationTask:Lcom/freeme/camera/ui/AnimationManager$AnimationTask;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/freeme/camera/ui/AnimationManager$AsyncData;

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "The animation data is null, cannot do the animation!"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "flipAnimationStart -"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static halveYUV420([BIII)[B
    .locals 7

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "halveYUV420 +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    div-int v0, p1, p3

    mul-int/2addr v0, p2

    div-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_1

    move v4, v3

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_0

    mul-int v5, v2, p1

    add-int/2addr v5, v3

    aget-byte v5, p0, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, p3

    goto :goto_1

    :cond_0
    add-int/2addr v2, p3

    move v3, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_2
    div-int/lit8 v4, p2, 0x2

    if-ge v2, v4, :cond_3

    move v4, v3

    move v3, v1

    :goto_3
    if-ge v3, p1, :cond_2

    mul-int v5, p1, p2

    mul-int v6, v2, p1

    add-int/2addr v5, v6

    add-int v6, v5, v3

    aget-byte v6, p0, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v6

    aget-byte v5, p0, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, p3, 0x2

    add-int/2addr v3, v5

    goto :goto_3

    :cond_2
    add-int/2addr v2, p3

    move v3, v4

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "halveYUV420 -"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private playCaptureAnimation()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "playCaptureAnimation +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/freeme/camera/ui/AnimationManager;->mCoverView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    new-instance v1, Lcom/freeme/camera/ui/AnimationManager$8;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/AnimationManager$8;-><init>(Lcom/freeme/camera/ui/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "playCaptureAnimation -"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private playSlideAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x1f4

    :goto_1
    iget-object v2, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationRoot:Landroid/view/View;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/freeme/camera/ui/AnimationManager$1;

    invoke-direct {v3, p0}, Lcom/freeme/camera/ui/AnimationManager$1;-><init>(Lcom/freeme/camera/ui/AnimationManager;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationRoot:Landroid/view/View;

    const-string v5, "alpha"

    new-array v6, v4, [F

    fill-array-data v6, :array_1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/freeme/camera/ui/AnimationManager$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/AnimationManager$2;-><init>(Lcom/freeme/camera/ui/AnimationManager;)V

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v1, Lcom/freeme/camera/ui/AnimationManager$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/AnimationManager$3;-><init>(Lcom/freeme/camera/ui/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method private playSwitchCameraAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationRoot:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/freeme/camera/ui/AnimationManager$4;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/AnimationManager$4;-><init>(Lcom/freeme/camera/ui/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/AnimationManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f020001

    invoke-static {v1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    new-instance v3, Lcom/freeme/camera/ui/AnimationManager$5;

    invoke-direct {v3, p0}, Lcom/freeme/camera/ui/AnimationManager$5;-><init>(Lcom/freeme/camera/ui/AnimationManager;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationRoot:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/freeme/camera/ui/AnimationManager$6;

    invoke-direct {v4, p0}, Lcom/freeme/camera/ui/AnimationManager$6;-><init>(Lcom/freeme/camera/ui/AnimationManager;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/freeme/camera/ui/AnimationManager;->mSwitchCameraAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/freeme/camera/ui/AnimationManager;->mSwitchCameraAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mSwitchCameraAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/freeme/camera/ui/AnimationManager$7;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/AnimationManager$7;-><init>(Lcom/freeme/camera/ui/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mSwitchCameraAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private slideAnimationEnd()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "slideAnimationEnd"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private slideAnimationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V
    .locals 2

    new-instance v0, Lcom/freeme/camera/ui/AnimationManager$AsyncData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/freeme/camera/ui/AnimationManager$AsyncData;-><init>(Lcom/freeme/camera/ui/AnimationManager$1;)V

    iput-object p1, v0, Lcom/freeme/camera/ui/AnimationManager$AsyncData;->mType:Lcom/freeme/camera/common/IAppUi$AnimationType;

    iput-object p2, v0, Lcom/freeme/camera/ui/AnimationManager$AsyncData;->mData:Lcom/freeme/camera/common/IAppUi$AnimationData;

    new-instance p1, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;

    invoke-direct {p1, p0, v1}, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;-><init>(Lcom/freeme/camera/ui/AnimationManager;Lcom/freeme/camera/ui/AnimationManager$1;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationTask:Lcom/freeme/camera/ui/AnimationManager$AnimationTask;

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mAnimationTask:Lcom/freeme/camera/ui/AnimationManager$AnimationTask;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/freeme/camera/ui/AnimationManager$AsyncData;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End animation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager$9;->$SwitchMap$com$freeme$camera$common$IAppUi$AnimationType:[I

    invoke-virtual {p1}, Lcom/freeme/camera/common/IAppUi$AnimationType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mCoverView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start animation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/ui/AnimationManager$9;->$SwitchMap$com$freeme$camera$common$IAppUi$AnimationType:[I

    invoke-virtual {p1}, Lcom/freeme/camera/common/IAppUi$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager;->mCoverView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/freeme/camera/ui/AnimationManager;->playCaptureAnimation()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/AnimationManager;->slideAnimationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPreviewStarted()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager;->mAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/CameraAppUI;->removeTopSurface()V

    return-void
.end method
