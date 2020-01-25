.class public Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;
.super Ljava/lang/Object;
.source "StatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/relation/StatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusResponder"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponderName:Ljava/lang/String;

.field final synthetic this$0:Lcom/freeme/camera/common/relation/StatusMonitor;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/common/relation/StatusMonitor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->this$0:Lcom/freeme/camera/common/relation/StatusMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->mResponderName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/relation/StatusMonitor;Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;-><init>(Lcom/freeme/camera/common/relation/StatusMonitor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->addListener(Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->removeListener(Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private addListener(Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeListener(Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getResponderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->mResponderName:Ljava/lang/String;

    return-object v0
.end method

.method public statusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
