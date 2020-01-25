.class public Lcom/freeme/camera/GalleryActivity;
.super Landroid/app/Activity;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static final FILMSTRIP_PRELOAD_AHEAD_ITEMS:I = 0xa


# instance fields
.field private mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMenu:Landroid/view/Menu;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAppContext:Landroid/content/Context;

.field private mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

.field private mDefaultGalleryDrawable:Landroid/graphics/drawable/Drawable;

.field private mFilmstripController:Lcom/freeme/camera/filmstrip/FilmstripController;

.field private final mFilmstripListener:Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;

.field private mFilmstripPanel:Lcom/freeme/camera/filmstrip/FilmstripContentPanel;

.field private mFilmstripVisible:Z

.field private mGalleryDeleted:Landroid/view/View;

.field private mGalleryIntent:Landroid/content/Intent;

.field private mGalleryOptRoot:Landroid/view/View;

.field private mGalleryShared:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstRequest:Z

.field private final mLocalDataListener:Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;

.field private mLocalImagesObserver:Lcom/freeme/camera/data/LocalMediaObserver;

.field private mLocalVideosObserver:Lcom/freeme/camera/data/LocalMediaObserver;

.field private mPaused:Z

.field private mPendingDeletion:Z

.field private mPreloader:Lcom/freeme/camera/data/Preloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/data/Preloader<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/freeme/camera/location/addressResovler/utils/ThreadPool;

.field private mThumb:Landroid/widget/ImageView;

.field private mUndoDeletionBar:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/GalleryActivity;->mPendingDeletion:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mThreadPool:Lcom/freeme/camera/location/addressResovler/utils/ThreadPool;

    new-instance v0, Lcom/freeme/camera/GalleryActivity$6;

    invoke-direct {v0, p0}, Lcom/freeme/camera/GalleryActivity$6;-><init>(Lcom/freeme/camera/GalleryActivity;)V

    iput-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripListener:Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;

    new-instance v0, Lcom/freeme/camera/GalleryActivity$7;

    invoke-direct {v0, p0}, Lcom/freeme/camera/GalleryActivity$7;-><init>(Lcom/freeme/camera/GalleryActivity;)V

    iput-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mLocalDataListener:Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/CameraDataAdapter;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/GalleryActivity;)Landroid/app/ActionBar;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/GalleryActivity;->mActionBar:Landroid/app/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/GalleryActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/GalleryActivity;->setFilmstripUiVisibility(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/filmstrip/FilmstripController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripController:Lcom/freeme/camera/filmstrip/FilmstripController;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/GalleryActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/GalleryActivity;->updateUiByData(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/freeme/camera/GalleryActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/GalleryActivity;->removeData(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/data/Preloader;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/GalleryActivity;->mPreloader:Lcom/freeme/camera/data/Preloader;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/GalleryActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/GalleryActivity;->getCurrentDataId()I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/GalleryActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryDeleted:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/GalleryActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/GalleryActivity;->mPaused:Z

    return p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/GalleryActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/GalleryActivity;->mThumb:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/GalleryActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/GalleryActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/GalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/GalleryActivity;->requestLoad()V

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/GalleryActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryOptRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/GalleryActivity;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/GalleryActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/GalleryActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/GalleryActivity;->hideUndoDeletionBar(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/freeme/camera/GalleryActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripVisible:Z

    return p0
.end method

.method static synthetic access$902(Lcom/freeme/camera/GalleryActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripVisible:Z

    return p1
.end method

.method private getCurrentDataId()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripController:Lcom/freeme/camera/filmstrip/FilmstripController;

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripController;->getCurrentId()I

    move-result v0

    return v0
.end method

.method private getShareIntentByData(Lcom/freeme/camera/data/LocalData;)Landroid/content/Intent;
    .locals 4

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/freeme/camera/data/PanoramaMetadataLoader;->isPanorama360(Lcom/freeme/camera/data/LocalData;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v2, v3, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Lcom/freeme/camera/data/LocalData;->isDataActionSupported(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/GalleryActivity;->getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/freeme/camera/util/FreemeCustomUtils;->createCustomChooser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "video/*"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "image/*"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private handleDelete()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryDeleted:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isFreemeTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1000ab

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100122

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    const v1, 0x7f0f0072

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/freeme/camera/GalleryActivity$8;

    invoke-direct {v2, p0}, Lcom/freeme/camera/GalleryActivity$8;-><init>(Lcom/freeme/camera/GalleryActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/freeme/camera/GalleryActivity$9;

    invoke-direct {v1, p0}, Lcom/freeme/camera/GalleryActivity$9;-><init>(Lcom/freeme/camera/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x1104

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private handleShared()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    invoke-direct {p0}, Lcom/freeme/camera/GalleryActivity;->getCurrentDataId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraDataAdapter;->getLocalData(I)Lcom/freeme/camera/data/LocalData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/GalleryActivity;->getShareIntentByData(Lcom/freeme/camera/data/LocalData;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/freeme/camera/GalleryActivity;->launchActivityByIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryShared:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private hideSessionProgress()V
    .locals 0

    return-void
.end method

.method private hideUndoDeletionBar(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/GalleryActivity;->mPendingDeletion:Z

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/GalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/GalleryActivity$4;-><init>(Lcom/freeme/camera/GalleryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private launchActivityByIntent(Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private performDeletion()V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/GalleryActivity;->mPendingDeletion:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/GalleryActivity;->hideUndoDeletionBar(Z)V

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraDataAdapter;->executeDeletion()Z

    return-void
.end method

.method private removeData(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/CameraDataAdapter;->removeData(I)V

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraDataAdapter;->getTotalNumber()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->showUndoDeletionBar()V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/freeme/camera/GalleryActivity;->mPendingDeletion:Z

    invoke-direct {p0}, Lcom/freeme/camera/GalleryActivity;->performDeletion()V

    iget-boolean p1, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripVisible:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripPanel:Lcom/freeme/camera/filmstrip/FilmstripContentPanel;

    invoke-interface {p1}, Lcom/freeme/camera/filmstrip/FilmstripContentPanel;->animateHide()Z

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->finish()V

    :goto_0
    return-void
.end method

.method private requestLoad()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/GalleryActivity;->mIsFirstRequest:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mLocalVideosObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    invoke-virtual {v0}, Lcom/freeme/camera/data/LocalMediaObserver;->isMediaDataChangedDuringPause()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mLocalImagesObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    invoke-virtual {v0}, Lcom/freeme/camera/data/LocalMediaObserver;->isMediaDataChangedDuringPause()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mThumb:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/GalleryActivity;->mIsFirstRequest:Z

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    new-instance v1, Lcom/freeme/camera/GalleryActivity$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/GalleryActivity$1;-><init>(Lcom/freeme/camera/GalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraDataAdapter;->requestLoad(Lcom/freeme/camera/util/Callback;)V

    :goto_1
    return-void
.end method

.method private setFilmstripUiVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->showBottomControls()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->hideBottomControls()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setScreenBrightness()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sGalleryBrightnessLevel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sGalleryBrightnessLevel:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private showDetailsDialog(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/CameraDataAdapter;->getLocalData(I)Lcom/freeme/camera/data/LocalData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mAppContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/freeme/camera/data/LocalData;->getMediaDetails(Landroid/content/Context;)Lcom/freeme/camera/data/MediaDetails;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/freeme/camera/DetailsDialog;->create(Landroid/content/Context;Lcom/freeme/camera/data/MediaDetails;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateActionBarMenu(Lcom/freeme/camera/data/LocalData;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mActionBarMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090013

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getLocalDataType()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private updateBottomControlsByData(Lcom/freeme/camera/data/LocalData;)V
    .locals 0

    return-void
.end method

.method private updateUiByData(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/CameraDataAdapter;->getLocalData(I)Lcom/freeme/camera/data/LocalData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/GalleryActivity;->hideSessionProgress()V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/freeme/camera/GalleryActivity;->updateActionBarMenu(Lcom/freeme/camera/data/LocalData;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    invoke-virtual {v2}, Lcom/freeme/camera/CameraDataAdapter;->getTotalNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/GalleryActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/GalleryActivity;->updateBottomControlsByData(Lcom/freeme/camera/data/LocalData;)V

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/CameraDataAdapter;->isMetadataUpdated(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/CameraDataAdapter;->updateMetadata(I)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized getThreadPool()Lcom/freeme/camera/location/addressResovler/utils/ThreadPool;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mThreadPool:Lcom/freeme/camera/location/addressResovler/utils/ThreadPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/location/addressResovler/utils/ThreadPool;

    invoke-direct {v0}, Lcom/freeme/camera/location/addressResovler/utils/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mThreadPool:Lcom/freeme/camera/location/addressResovler/utils/ThreadPool;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mThreadPool:Lcom/freeme/camera/location/addressResovler/utils/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hideBottomControls()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryOptRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryOptRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    int-to-float v0, v0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryOptRoot:Landroid/view/View;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/freeme/camera/util/Gusterpolator;->INSTANCE:Lcom/freeme/camera/util/Gusterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/freeme/camera/GalleryActivity$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/GalleryActivity$3;-><init>(Lcom/freeme/camera/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/freeme/camera/GalleryActivity;->handleShared()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/freeme/camera/GalleryActivity;->handleDelete()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900d4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mActionBar:Landroid/app/ActionBar;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x60000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0b0055

    invoke-virtual {p0, p1}, Lcom/freeme/camera/GalleryActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lcom/freeme/camera/GalleryActivity;->setScreenBrightness()V

    const p1, 0x7f090068

    invoke-virtual {p0, p1}, Lcom/freeme/camera/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mThumb:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mThumb:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mThumb:Landroid/widget/ImageView;

    invoke-static {}, Lcom/freeme/camera/CameraActivity;->getsThumbBig()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080122

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mDefaultGalleryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mAppContext:Landroid/content/Context;

    const p1, 0x7f0900c6

    invoke-virtual {p0, p1}, Lcom/freeme/camera/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->getController()Lcom/freeme/camera/filmstrip/FilmstripController;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripController:Lcom/freeme/camera/filmstrip/FilmstripController;

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripController:Lcom/freeme/camera/filmstrip/FilmstripController;

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/filmstrip/FilmstripController;->setImageGap(I)V

    new-instance p1, Lcom/freeme/camera/CameraDataAdapter;

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mAppContext:Landroid/content/Context;

    const v1, 0x7f06005d

    invoke-direct {p1, v0, v1}, Lcom/freeme/camera/CameraDataAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mLocalDataListener:Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/CameraDataAdapter;->setLocalDataListener(Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;)V

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripController:Lcom/freeme/camera/filmstrip/FilmstripController;

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    invoke-interface {p1, v0}, Lcom/freeme/camera/filmstrip/FilmstripController;->setDataAdapter(Lcom/freeme/camera/filmstrip/DataAdapter;)V

    new-instance p1, Lcom/freeme/camera/data/Preloader;

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    const/16 v1, 0xa

    invoke-direct {p1, v1, v0, v0}, Lcom/freeme/camera/data/Preloader;-><init>(ILcom/freeme/camera/data/Preloader$ItemSource;Lcom/freeme/camera/data/Preloader$ItemLoader;)V

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mPreloader:Lcom/freeme/camera/data/Preloader;

    const p1, 0x7f0900c5

    invoke-virtual {p0, p1}, Lcom/freeme/camera/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/filmstrip/FilmstripContentPanel;

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripPanel:Lcom/freeme/camera/filmstrip/FilmstripContentPanel;

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripPanel:Lcom/freeme/camera/filmstrip/FilmstripContentPanel;

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripListener:Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;

    invoke-interface {p1, v0}, Lcom/freeme/camera/filmstrip/FilmstripContentPanel;->setFilmstripListener(Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;)V

    const p1, 0x7f090066

    invoke-virtual {p0, p1}, Lcom/freeme/camera/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    const p1, 0x7f0900d7

    invoke-virtual {p0, p1}, Lcom/freeme/camera/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryOptRoot:Landroid/view/View;

    const p1, 0x7f0900d5

    invoke-virtual {p0, p1}, Lcom/freeme/camera/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryShared:Landroid/view/View;

    const p1, 0x7f0900d4

    invoke-virtual {p0, p1}, Lcom/freeme/camera/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryDeleted:Landroid/view/View;

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryShared:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryDeleted:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/freeme/camera/data/LocalMediaObserver;

    invoke-direct {p1}, Lcom/freeme/camera/data/LocalMediaObserver;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mLocalImagesObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    new-instance p1, Lcom/freeme/camera/data/LocalMediaObserver;

    invoke-direct {p1}, Lcom/freeme/camera/data/LocalMediaObserver;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mLocalVideosObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mLocalImagesObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mLocalVideosObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v2, p0, Lcom/freeme/camera/GalleryActivity;->mIsFirstRequest:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mActionBarMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/freeme/camera/util/IntentHelper;->getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/freeme/camera/util/IntentHelper;->getGalleryAppName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mDefaultGalleryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mLocalImagesObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mLocalVideosObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->finish()V

    const p1, 0x7f01000e

    const p2, 0x7f01001e

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/GalleryActivity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090013

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity;->mFilmstripController:Lcom/freeme/camera/filmstrip/FilmstripController;

    invoke-interface {p1}, Lcom/freeme/camera/filmstrip/FilmstripController;->getCurrentId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/GalleryActivity;->showDetailsDialog(I)V

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->finish()V

    const p1, 0x7f01000e

    const v0, 0x7f01001e

    invoke-virtual {p0, p1, v0}, Lcom/freeme/camera/GalleryActivity;->overridePendingTransition(II)V

    return v2
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/GalleryActivity;->mPaused:Z

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mLocalImagesObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mLocalVideosObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/GalleryActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isImageReady"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/GalleryActivity;->requestLoad()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/GalleryActivity$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/GalleryActivity$2;-><init>(Lcom/freeme/camera/GalleryActivity;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mLocalImagesObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mLocalVideosObserver:Lcom/freeme/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    iput-boolean v1, p0, Lcom/freeme/camera/GalleryActivity;->mPaused:Z

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryDeleted:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryShared:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->getInstance(Landroid/content/Context;)Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->getInstance(Landroid/content/Context;)Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->stop()V

    return-void
.end method

.method public showBottomControls()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryOptRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mGalleryOptRoot:Landroid/view/View;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v1

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput v4, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/freeme/camera/util/Gusterpolator;->INSTANCE:Lcom/freeme/camera/util/Gusterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public showUndoDeletionBar()V
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/GalleryActivity;->mPendingDeletion:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/GalleryActivity;->performDeletion()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/GalleryActivity;->mPendingDeletion:Z

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b009a

    iget-object v3, p0, Lcom/freeme/camera/GalleryActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f09006a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const v2, 0x7f09006b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/freeme/camera/GalleryActivity$5;

    invoke-direct {v2, p0}, Lcom/freeme/camera/GalleryActivity$5;-><init>(Lcom/freeme/camera/GalleryActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/freeme/camera/GalleryActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
