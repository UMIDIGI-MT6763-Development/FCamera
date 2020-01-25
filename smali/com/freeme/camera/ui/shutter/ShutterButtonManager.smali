.class public Lcom/freeme/camera/ui/shutter/ShutterButtonManager;
.super Lcom/freeme/camera/ui/AbstractViewManager;
.source "ShutterButtonManager.java"

# interfaces
.implements Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;,
        Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;,
        Lcom/freeme/camera/ui/shutter/ShutterButtonManager$OnShutterChangeListener;
    }
.end annotation


# static fields
.field private static final CAMER_CONFIG_FACE_BEAUTY:Ljava/lang/String; = "4"

.field private static final CAMER_CONFIG_HDR:Ljava/lang/String; = "2"

.field private static final CAMER_CONFIG_NIGHT:Ljava/lang/String; = "3"

.field private static final CAMER_CONFIG_NORMAL:Ljava/lang/String; = "0"

.field private static final CAMER_CONFIG_PANORAMA:Ljava/lang/String; = "1"

.field private static final FRONT_CAMERA_ID:Ljava/lang/String; = "1"

.field private static final SHUTTER_GESTURE_PRIORITY:I = 0x14

.field private static final SHUTTER_MODE_WHICH_BEAUTY:Ljava/lang/String; = "Beauty Face"

.field private static final SHUTTER_MODE_WHICH_CHILDREN:Ljava/lang/String; = "Children"

.field private static final SHUTTER_MODE_WHICH_IKO:Ljava/lang/String; = "IKO"

.field private static final SHUTTER_MODE_WHICH_PANORAMA:Ljava/lang/String; = "Panorama"

.field private static final SHUTTER_MODE_WHICH_PHOTO:Ljava/lang/String; = "Photo"

.field private static final SHUTTER_MODE_WHICH_VIDEO:Ljava/lang/String; = "Video"

.field private static final SHUTTER_MODE_WHICH_VIDEO_BEAUTY:Ljava/lang/String; = "Video Beauty Face"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final sNextGenerateId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private isFirstInit:Z

.field private mChangIndex:I

.field private mCurrentCameraId:Ljava/lang/String;

.field private mDurationTimes:I

.field private mIKOWhichShutter:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitWhichShutter:I

.field private mListener:Lcom/freeme/camera/ui/shutter/ShutterButtonManager$OnShutterChangeListener;

.field private mModeChangeStart:Z

.field private mModeType:Z

.field private mShutterButtonListener:Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;

.field private mShutterButtonListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShutterButtons:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/Integer;",
            "Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

.field private mShutterView:Lcom/freeme/camera/ui/shutter/ShutterView;

.field private mapp:Lcom/freeme/camera/common/app/IApp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->sNextGenerateId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/AbstractViewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    new-instance p2, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtonListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    const/4 p2, 0x0

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mChangIndex:I

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInitWhichShutter:I

    const-string v1, "0"

    iput-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mCurrentCameraId:Ljava/lang/String;

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mIKOWhichShutter:I

    iput-boolean p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mModeChangeStart:Z

    iput-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->isFirstInit:Z

    new-instance p2, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtons:Ljava/util/concurrent/ConcurrentSkipListMap;

    new-instance p2, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterButtonListenerImpl;-><init>(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;Lcom/freeme/camera/ui/shutter/ShutterButtonManager$1;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtonListener:Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mapp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtonListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/shutter/ShutterButtonManager;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method private static generateViewId()I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->sNextGenerateId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const v2, 0xffffff

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget-object v2, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->sNextGenerateId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_2
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method private setWhichShutterForCameraId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_mode_front_default:Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_mode_front_default:Ljava/lang/String;

    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Photo"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInitWhichShutter:I

    goto :goto_0

    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Photo"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInitWhichShutter:I

    goto :goto_0

    :cond_1
    const-string p1, "Video"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInitWhichShutter:I

    goto :goto_0

    :cond_2
    const-string p1, "Photo"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInitWhichShutter:I

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_mode_back_default:Ljava/lang/String;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_mode_back_default:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "Panorama"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInitWhichShutter:I

    goto :goto_0

    :cond_4
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Photo"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInitWhichShutter:I

    goto :goto_0

    :cond_5
    const-string p1, "Photo"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInitWhichShutter:I

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public clearShutterButton()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtons:Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->removeAllViews()V

    :cond_1
    return-void
.end method

.method public getCurrentmCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mCurrentCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getInitWhichShutter()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInitWhichShutter:I

    return v0
.end method

.method public getShutterButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterView:Lcom/freeme/camera/ui/shutter/ShutterView;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterView;->getShutterButton()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getShutterRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    return-object v0
.end method

.method protected getView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901b8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    iput-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->init(Lcom/freeme/camera/common/app/IApp;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->setOnShutterChangedListener(Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getGestureListener()Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    move-result-object v1

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->registerGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901bc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/shutter/ShutterView;

    iput-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterView:Lcom/freeme/camera/ui/shutter/ShutterView;

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getKeyEventListener()Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/app/IApp;->registerKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/freeme/camera/ui/AbstractViewManager;->onPause()V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/freeme/camera/ui/AbstractViewManager;->onResume()V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->onResume()V

    :cond_0
    return-void
.end method

.method public onShutterChangedEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->isFirstInit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->isFirstInit:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/CameraAppUI;->showPreviewAnim(I)V

    :goto_0
    return-void
.end method

.method public onShutterChangedStart(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mListener:Lcom/freeme/camera/ui/shutter/ShutterButtonManager$OnShutterChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$OnShutterChangeListener;->onShutterTypeChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShutterChangedStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mListener:Lcom/freeme/camera/ui/shutter/ShutterButtonManager$OnShutterChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mModeChangeStart:Z

    invoke-interface {v0, p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$OnShutterChangeListener;->onShutterTypeChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iget p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mDurationTimes:I

    iget-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mModeType:Z

    invoke-virtual {p1, p2, v0}, Lcom/freeme/camera/ui/CameraAppUI;->hidePreviewAnim(IZ)V

    return-void
.end method

.method public registerDone()V
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtons:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtons:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;

    iget-object v5, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0b0092

    iget-object v7, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v5, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/freeme/camera/ui/shutter/ShutterTitleView;

    const v6, 0x7f0901bb

    invoke-virtual {v5, v6}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/freeme/camera/common/widget/StrokeTextView;

    iget-object v7, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v7}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v7

    check-cast v7, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v7}, Lcom/freeme/camera/ui/CameraAppUI;->getGestureManager()Lcom/freeme/camera/gesture/GestureManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/freeme/camera/gesture/GestureManager;->getRootOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/freeme/camera/common/widget/StrokeTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->setType(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->generateViewId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->setId(I)V

    iget-object v6, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v5, v6}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->setOnShutterTextClickedListener(Lcom/freeme/camera/ui/shutter/ShutterTitleView$OnShutterTextClicked;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->setTag(Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->setMode(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterModeName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->setModeName(Ljava/lang/String;)V

    const-string v6, "IKO"

    iget-object v7, v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput v2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mIKOWhichShutter:I

    :cond_0
    iget-object v6, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v6}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v6

    check-cast v6, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v6}, Lcom/freeme/camera/ui/CameraAppUI;->isIKOIntent()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "IKO"

    iget-object v7, v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mIKOWhichShutter:I

    iput v6, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mInitWhichShutter:I

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mCurrentCameraId:Ljava/lang/String;

    iget-object v7, v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterMode:Ljava/lang/String;

    invoke-direct {p0, v6, v2, v7}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->setWhichShutterForCameraId(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_1
    const-string v6, "Beauty Face"

    iget-object v7, v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string v6, "Video Beauty Face"

    iget-object v7, v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v6, v5}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->addView(Landroid/view/View;)V

    iput-object v5, v4, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterTitleView:Lcom/freeme/camera/ui/shutter/ShutterTitleView;

    invoke-virtual {v5}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v3, :cond_5

    const/16 v3, 0xe

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_5
    iget-object v3, v3, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterTitleView:Lcom/freeme/camera/ui/shutter/ShutterTitleView;

    invoke-virtual {v3}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->getId()I

    move-result v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f070060

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_2
    invoke-virtual {v5, v6}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterView:Lcom/freeme/camera/ui/shutter/ShutterView;

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtonListener:Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterView;->setOnShutterButtonListener(Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;)V

    :cond_7
    return-void
.end method

.method public registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "registerOnShutterButtonListener error [why null]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtonListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerShutterButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtons:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;-><init>(Lcom/freeme/camera/ui/shutter/ShutterButtonManager$1;)V

    iput-object p1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterType:Ljava/lang/String;

    const-string p1, "Picture"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f01a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "Video"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Video Beauty Face"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f01a4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterName:Ljava/lang/String;

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtons:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerShutterButton(Lcom/freeme/camera/common/IAppUi$ModeItem;I)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtons:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;-><init>(Lcom/freeme/camera/ui/shutter/ShutterButtonManager$1;)V

    iget-object v1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mType:Ljava/lang/String;

    iput-object v2, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterType:Ljava/lang/String;

    const-string v3, "Video"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Video Beauty Face"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "Large"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0801a6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    const-string v3, "Qr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0801a8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0801a7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0801a9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_4

    iput-object v1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterName:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v1, "Video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Video Beauty Face"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterName:Ljava/lang/String;

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterName:Ljava/lang/String;

    :goto_3
    iget-object v1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    iput-object v1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterMode:Ljava/lang/String;

    iget-object p1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    iput-object p1, v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;->mShutterModeName:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtons:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public setChangIndex(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mChangIndex:I

    return-void
.end method

.method public setCurrentCameraId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v2, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setModeChange(IZ)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mDurationTimes:I

    iput-boolean p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mModeType:Z

    return-void
.end method

.method public setOnShutterChangedListener(Lcom/freeme/camera/ui/shutter/ShutterButtonManager$OnShutterChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mListener:Lcom/freeme/camera/ui/shutter/ShutterButtonManager$OnShutterChangeListener;

    return-void
.end method

.method public setTextEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v2, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/ui/shutter/ShutterTitleView;

    invoke-virtual {v2, p1}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freeme/camera/ui/AbstractViewManager;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterView:Lcom/freeme/camera/ui/shutter/ShutterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public triggerShutterButtonClicked(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtonListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    iget-object v3, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtonListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->getPriorityByKey(Ljava/lang/String;)I

    move-result v1

    if-le v1, p1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;->onShutterButtonClick()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    return-void
.end method

.method public triggerShutterButtonLongPressed(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtonListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    iget-object v3, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtonListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->getPriorityByKey(Ljava/lang/String;)I

    move-result v1

    if-le v1, p1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;->onShutterButtonLongPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    return-void
.end method

.method public unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "unregisterOnShutterButtonListener error [why null]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtonListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterButtonListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public updateCurrentModeShutter(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterView:Lcom/freeme/camera/ui/shutter/ShutterView;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const-string p2, "Video"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "Video Beauty Face"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "Large"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0801a6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p2, "Qr"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0801a8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0801a7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0801a9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterView:Lcom/freeme/camera/ui/shutter/ShutterView;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/ui/shutter/ShutterView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateIKOModeShutter()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    iget v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mIKOWhichShutter:I

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->updateCurrentShutterIndex(I)V

    return-void
.end method

.method public updateModeSupportType()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mShutterLayout:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    iget v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->mChangIndex:I

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->updateCurrentShutterIndex(I)V

    return-void
.end method
