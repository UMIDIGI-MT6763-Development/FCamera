.class public Lcom/freeme/camera/common/setting/SettingAccessManager;
.super Ljava/lang/Object;
.source "SettingAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/setting/SettingAccessManager$Access;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAccessCountSyncObject:Ljava/lang/Object;

.field private mAccessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/setting/SettingAccessManager$Access;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mActiveAccessCount:I

.field private mConditionVariable:Landroid/os/ConditionVariable;

.field private mInControlling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/setting/SettingAccessManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mActiveAccessCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mAccessCountSyncObject:Ljava/lang/Object;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public declared-synchronized activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;Z)Z
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    sget-object p2, Lcom/freeme/camera/common/setting/SettingAccessManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[activeAccess], access:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->access$000(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInControlling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mInControlling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-boolean p2, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mInControlling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->access$100(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    iget-object p2, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mAccessCountSyncObject:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget p2, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mActiveAccessCount:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mActiveAccessCount:I

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;
    .locals 1

    new-instance v0, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;-><init>(Lcom/freeme/camera/common/setting/SettingAccessManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;Z)V

    return-void
.end method

.method public recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;Z)V
    .locals 2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/freeme/camera/common/setting/SettingAccessManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[recycleAccess], access:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->access$000(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mAccessCountSyncObject:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mActiveAccessCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mActiveAccessCount:I

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->access$200(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    iget p1, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mActiveAccessCount:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized startControl()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/common/setting/SettingAccessManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startControl]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mInControlling:Z

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    invoke-static {v1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->access$200(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    sget-object v0, Lcom/freeme/camera/common/setting/SettingAccessManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startControl], mActiveAccessCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mActiveAccessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mActiveAccessCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mActiveAccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopControl()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/common/setting/SettingAccessManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopControl]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager;->mInControlling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
