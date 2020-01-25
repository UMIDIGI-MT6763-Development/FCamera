.class Lcom/freeme/camera/ui/ThumbnailViewManager;
.super Lcom/freeme/camera/ui/AbstractViewManager;
.source "ThumbnailViewManager.java"

# interfaces
.implements Lcom/freeme/camera/ui/ThumbnailViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;
    }
.end annotation


# static fields
.field private static final ANIMATION_ALPHA_END:F = 1.0f

.field private static final ANIMATION_ALPHA_START:F = 0.0f

.field private static final ANIMATION_COLOR:I = -0x1

.field private static final ANIMATION_DURATION:I = 0x0

.field private static final BORDER_COLOR:I = -0x1

.field private static final CLASS_NAME:Ljava/lang/String; = "com.freeme.storage.StorageManagerEx"

.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field private static final MAX_PEEK_BITMAP_PIXELS:I = 0x61a80

.field private static final METHOD_NAME:Ljava/lang/String; = "getDefaultPath"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final THUMB_COLOR:I = -0xcfcfd0

.field private static sGetDefaultPath:Ljava/lang/reflect/Method;

.field private static sMountPoint:Ljava/lang/String;


# instance fields
.field private mAnimationDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

.field private mAnimationView:Lcom/freeme/camera/common/widget/RotateImageView;

.field private final mContext:Landroid/content/Context;

.field private mIsNeedQueryDB:Z

.field private mLoadBitmapTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mOnClickListener:Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoundDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

.field private mRoundedBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailUri:Landroid/net/Uri;

.field private mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

.field private mThumbnailViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    :try_start_0
    const-string v0, "com.freeme.storage.StorageManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "getDefaultPath"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->sGetDefaultPath:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->sGetDefaultPath:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->sGetDefaultPath:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "ClassNotFoundException: com.freeme.storage.StorageManagerEx"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "NoSuchMethodException: getDefaultPath"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/AbstractViewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mRoundedBitmap:Landroid/graphics/Bitmap;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mLock:Ljava/lang/Object;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mIsNeedQueryDB:Z

    new-instance p2, Lcom/freeme/camera/ui/ThumbnailViewManager$3;

    invoke-direct {p2, p0}, Lcom/freeme/camera/ui/ThumbnailViewManager$3;-><init>(Lcom/freeme/camera/ui/ThumbnailViewManager;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/ThumbnailViewManager;)Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mOnClickListener:Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;

    return-object p0
.end method

.method static synthetic access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/ThumbnailViewManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/ThumbnailViewManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/ThumbnailViewManager;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mRoundDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/ThumbnailViewManager;)Lcom/freeme/camera/common/widget/RotateImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->sMountPoint:Ljava/lang/String;

    return-object p0
.end method

.method private cancelLoadThumbnail()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mLoadBitmapTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[cancelLoadThumbnail]..."

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mLoadBitmapTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mLoadBitmapTask:Landroid/os/AsyncTask;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createRoundDrawable(Landroid/graphics/Bitmap;I)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 10

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {v0}, Lcom/freeme/camera/common/widget/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {v1}, Lcom/freeme/camera/common/widget/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    const-string v3, "Has Content"

    invoke-virtual {v2, v3}, Lcom/freeme/camera/common/widget/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    const-string v3, "No Content"

    invoke-virtual {v2, v3}, Lcom/freeme/camera/common/widget/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v2, :cond_1

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-static {p1, v4, v3, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-ge v3, v2, :cond_2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2, v4, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x4

    sub-int/2addr v6, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mRoundedBitmap:Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mRoundedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    sub-int p2, v6, v1

    sub-int v1, v6, v4

    int-to-float p2, p2

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {v8, v0, p2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v1, v7

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v8, v1, v4, v6, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mRoundedBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p2

    int-to-float v1, v5

    invoke-virtual {p2, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    invoke-virtual {p2, v3}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method

.method private doAnimation(Lcom/freeme/camera/common/widget/RotateImageView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/freeme/camera/common/widget/RotateImageView;->clearAnimation()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Lcom/freeme/camera/ui/ThumbnailViewManager$2;

    invoke-direct {p1, p0}, Lcom/freeme/camera/ui/ThumbnailViewManager$2;-><init>(Lcom/freeme/camera/ui/ThumbnailViewManager;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private getLastThumbnail()V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->cancelLoadThumbnail()V

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;-><init>(Lcom/freeme/camera/ui/ThumbnailViewManager;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mLoadBitmapTask:Landroid/os/AsyncTask;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isDefaultPathCanUsed()Z
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->sGetDefaultPath:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isExtendStorageCanUsed()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->isDefaultPathCanUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerIntentFilter()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterIntentFilter()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateThumbnailView(Landroid/graphics/Bitmap;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[updateThumbnailView]..."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    if-eqz v0, :cond_1

    const v0, -0xcfcfd0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[updateThumbnailView] set created thumbnail"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->createRoundDrawable(Landroid/graphics/Bitmap;I)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mRoundDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[updateThumbnailView] set default thumbnail"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->createRoundDrawable(Landroid/graphics/Bitmap;I)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mRoundDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getThumbnailViewWidth()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailViewWidth:I

    return v0
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[getView]..."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f0901db

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f0901dc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mAnimationView:Lcom/freeme/camera/common/widget/RotateImageView;

    const/4 v0, 0x0

    const v1, -0xcfcfd0

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->createRoundDrawable(Landroid/graphics/Bitmap;I)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mRoundDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->createRoundDrawable(Landroid/graphics/Bitmap;I)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mAnimationDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mRoundDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mAnimationView:Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mAnimationDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    new-instance v1, Lcom/freeme/camera/ui/ThumbnailViewManager$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/ThumbnailViewManager$1;-><init>(Lcom/freeme/camera/ui/ThumbnailViewManager;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {v0}, Lcom/freeme/camera/common/widget/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {v1}, Lcom/freeme/camera/common/widget/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailViewWidth:I

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    return-object v0
.end method

.method isSameStorage(Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->isExtendStorageCanUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->sMountPoint:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->isSameStorage(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/freeme/camera/ui/AbstractViewManager;->onPause()V

    invoke-direct {p0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->isExtendStorageCanUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->unregisterIntentFilter()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/freeme/camera/ui/AbstractViewManager;->onResume()V

    invoke-direct {p0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->isExtendStorageCanUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->registerIntentFilter()V

    invoke-static {}, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->sMountPoint:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mIsNeedQueryDB:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->getLastThumbnail()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mIsNeedQueryDB:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/ThumbnailViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setEnabled] enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailUri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/widget/RotateImageView;->setClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/widget/RotateImageView;->setClickable(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/widget/RotateImageView;->setClickable(Z)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    const/16 v0, 0x6a

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/CameraAppUI;->getCaptureState()Lcom/freeme/camera/common/CaptureState;

    move-result-object p1

    sget-object v0, Lcom/freeme/camera/common/CaptureState;->START:Lcom/freeme/camera/common/CaptureState;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method public setThumbnailClickedListener(Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mOnClickListener:Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;

    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {p1}, Lcom/freeme/camera/common/widget/RotateImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    const/16 v0, 0x6a

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mRoundDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mAnimationView:Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->doAnimation(Lcom/freeme/camera/common/widget/RotateImageView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailView:Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mRoundDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mIsNeedQueryDB:Z

    :goto_0
    return-void
.end method

.method public updateUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager;->mThumbnailUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->setEnabled(Z)V

    return-void
.end method
