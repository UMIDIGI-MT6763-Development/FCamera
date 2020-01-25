.class public Lcom/mediatek/camera/portability/WifiDisplayStatusEx;
.super Ljava/lang/Object;
.source "WifiDisplayStatusEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/camera/portability/WifiDisplayStatusEx$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiDisplayStatusEx"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/camera/portability/WifiDisplayStatusEx$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/camera/portability/WifiDisplayStatusEx$1;-><init>(Lcom/mediatek/camera/portability/WifiDisplayStatusEx;)V

    iput-object v0, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/camera/portability/WifiDisplayStatusEx;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->isWfdEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/mediatek/camera/portability/WifiDisplayStatusEx;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->notifyStateChanged(Z)V

    return-void
.end method

.method private isWfdEnabled()Z
    .locals 5

    iget-object v0, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "WifiDisplayStatusEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isWfdEnabled()] activeDisplayState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", return "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isWfdEnabled(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "WifiDisplayStatusEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isWfdEnabled()] activeDisplayState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", return "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private notifyStateChanged(Z)V
    .locals 3

    const-string v0, "WifiDisplayStatusEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyStateChanged]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/camera/portability/WifiDisplayStatusEx$OnStateChangeListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/mediatek/camera/portability/WifiDisplayStatusEx$OnStateChangeListener;->onStateChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->isWfdEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->notifyStateChanged(Z)V

    return-void
.end method

.method public setStateChangeListener(Lcom/mediatek/camera/portability/WifiDisplayStatusEx$OnStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
