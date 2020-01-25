.class public Lcom/freeme/camera/gesture/GestureManager;
.super Ljava/lang/Object;
.source "GestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;,
        Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mGestureListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap<",
            "Ljava/lang/Integer;",
            "Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureNotifier:Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

.field private mGestureRecognizer:Lcom/freeme/camera/gesture/GestureRecognizer;

.field private mRootTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/gesture/GestureManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/gesture/GestureManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object v0, p0, Lcom/freeme/camera/gesture/GestureManager;->mGestureListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    new-instance v0, Lcom/freeme/camera/gesture/GestureManager$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/gesture/GestureManager$1;-><init>(Lcom/freeme/camera/gesture/GestureManager;)V

    iput-object v0, p0, Lcom/freeme/camera/gesture/GestureManager;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/freeme/camera/gesture/GestureManager$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/gesture/GestureManager$2;-><init>(Lcom/freeme/camera/gesture/GestureManager;)V

    iput-object v0, p0, Lcom/freeme/camera/gesture/GestureManager;->mRootTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/freeme/camera/gesture/GestureRecognizer;

    new-instance v1, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/gesture/GestureManager$GestureListenerImpl;-><init>(Lcom/freeme/camera/gesture/GestureManager;Lcom/freeme/camera/gesture/GestureManager$1;)V

    invoke-direct {v0, p1, v1}, Lcom/freeme/camera/gesture/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/freeme/camera/gesture/GestureRecognizer$Listener;)V

    iput-object v0, p0, Lcom/freeme/camera/gesture/GestureManager;->mGestureRecognizer:Lcom/freeme/camera/gesture/GestureRecognizer;

    new-instance p1, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    invoke-direct {p1, p0, v2}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;-><init>(Lcom/freeme/camera/gesture/GestureManager;Lcom/freeme/camera/gesture/GestureManager$1;)V

    iput-object p1, p0, Lcom/freeme/camera/gesture/GestureManager;->mGestureNotifier:Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureRecognizer;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/gesture/GestureManager;->mGestureRecognizer:Lcom/freeme/camera/gesture/GestureRecognizer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/gesture/GestureManager;->mGestureListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/gesture/GestureManager;->mGestureNotifier:Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;

    return-object p0
.end method


# virtual methods
.method public getOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getRootOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager;->mRootTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public registerGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;I)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/freeme/camera/gesture/GestureManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "registerGestureListener error [why null]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager;->mGestureListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/freeme/camera/gesture/GestureManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "unregisterGestureListener error [why null]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager;->mGestureListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager;->mGestureListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
