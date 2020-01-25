.class public Lcom/freeme/camera/common/setting/SettingManagerFactory;
.super Ljava/lang/Object;
.source "SettingManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;
    }
.end annotation


# instance fields
.field private final mApp:Lcom/freeme/camera/common/app/IApp;

.field private final mCameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private final mSettingManagerWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory;->mSettingManagerWrappers:Ljava/util/Map;

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput-object p2, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/setting/ISettingManager;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory;->mSettingManagerWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;

    new-instance v1, Lcom/freeme/camera/common/setting/SettingManager;

    invoke-direct {v1}, Lcom/freeme/camera/common/setting/SettingManager;-><init>()V

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;-><init>(Lcom/freeme/camera/common/setting/SettingManagerFactory;Lcom/freeme/camera/common/setting/SettingManager;Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->getSettingManager()Lcom/freeme/camera/common/setting/SettingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v3, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/freeme/camera/common/setting/SettingManager;->init(Ljava/lang/String;Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->getSettingManager()Lcom/freeme/camera/common/setting/SettingManager;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/freeme/camera/common/setting/SettingManager;->bindMode(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V

    iget-object p4, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory;->mSettingManagerWrappers:Ljava/util/Map;

    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->getSettingManager()Lcom/freeme/camera/common/setting/SettingManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->getModeKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->getModeKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p2}, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->updateModeKey(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->updateModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V

    invoke-virtual {p1, p4}, Lcom/freeme/camera/common/setting/SettingManager;->unbindMode(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingManager;->bindMode(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V

    :cond_1
    return-object p1
.end method

.method public recycle(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory;->mSettingManagerWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->getSettingManager()Lcom/freeme/camera/common/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->getModeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/setting/SettingManager;->unbindMode(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->getSettingManager()Lcom/freeme/camera/common/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingManager;->unInit()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory;->mSettingManagerWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public recycleAll()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory;->mSettingManagerWrappers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->recycle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
