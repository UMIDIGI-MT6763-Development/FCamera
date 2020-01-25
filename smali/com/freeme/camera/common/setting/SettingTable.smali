.class public Lcom/freeme/camera/common/setting/SettingTable;
.super Ljava/lang/Object;
.source "SettingTable.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private final mCaptureRequestGroup:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigParametersGroup:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewStatusGroup:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingListByType:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsByTypeSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/setting/SettingTable;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mConfigParametersGroup:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mCaptureRequestGroup:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mPreviewStatusGroup:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingsByTypeSync:Ljava/lang/Object;

    return-void
.end method

.method private addSettingByTypeSync(Lcom/freeme/camera/common/setting/ICameraSetting;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingsByTypeSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeSettingByTypeSync(Lcom/freeme/camera/common/setting/ICameraSetting;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingsByTypeSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public add(Lcom/freeme/camera/common/setting/ICameraSetting;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/common/setting/SettingTable;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[add] why pass NULL setting!!!!!!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SettingTable.add] setting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",Please check why you return NULL setting key or setting type!!!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/setting/SettingTable;->add(Lcom/freeme/camera/common/setting/ICameraSetting;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public classify(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/setting/SettingTable;->addSettingByTypeSync(Lcom/freeme/camera/common/setting/ICameraSetting;)V

    sget-object v2, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne v2, p1, :cond_1

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingTable;->mConfigParametersGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne v2, p1, :cond_2

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingTable;->mCaptureRequestGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingTable;->mPreviewStatusGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/setting/ICameraSetting;

    return-object p1
.end method

.method public getAllCaptureRequestSettings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mCaptureRequestGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAllConfigParametersSettings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mConfigParametersGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAllPreviewStatusSettings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mPreviewStatusGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAllSettings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getCaptureRequestSetting(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mCaptureRequestGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/setting/ICameraSetting;

    return-object p1
.end method

.method public getConfigParameterSetting(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mConfigParametersGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/setting/ICameraSetting;

    return-object p1
.end method

.method public getSettingListByType(Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingsByTypeSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/freeme/camera/common/setting/SettingTable$1;->$SwitchMap$com$freeme$camera$common$setting$ICameraSetting$SettingType:[I

    invoke-virtual {p1}, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    sget-object v2, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    invoke-interface {p1, v2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    sget-object v2, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    invoke-interface {p1, v2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    sget-object v2, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    invoke-interface {p1, v2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    sget-object v2, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    invoke-interface {p1, v2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    sget-object v2, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    invoke-interface {p1, v2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Lcom/freeme/camera/common/setting/ICameraSetting;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/setting/SettingTable;->removeSettingByTypeSync(Lcom/freeme/camera/common/setting/ICameraSetting;)V

    return-void
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mConfigParametersGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mCaptureRequestGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingTable;->mPreviewStatusGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
