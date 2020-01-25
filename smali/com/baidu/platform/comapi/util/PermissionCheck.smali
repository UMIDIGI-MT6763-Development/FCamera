.class public Lcom/baidu/platform/comapi/util/PermissionCheck;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/util/PermissionCheck$b;,
        Lcom/baidu/platform/comapi/util/PermissionCheck$a;,
        Lcom/baidu/platform/comapi/util/PermissionCheck$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PermissionCheck"

.field private static b:Landroid/content/Context;

.field private static c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/baidu/lbsapi/auth/LBSAuthManager;

.field private static e:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

.field private static f:Lcom/baidu/platform/comapi/util/PermissionCheck$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/baidu/platform/comapi/util/PermissionCheck$c;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/PermissionCheck;->f:Lcom/baidu/platform/comapi/util/PermissionCheck$c;

    return-object v0
.end method

.method public static destory()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/platform/comapi/util/PermissionCheck;->f:Lcom/baidu/platform/comapi/util/PermissionCheck$c;

    sput-object v0, Lcom/baidu/platform/comapi/util/PermissionCheck;->b:Landroid/content/Context;

    sput-object v0, Lcom/baidu/platform/comapi/util/PermissionCheck;->e:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 9

    sput-object p0, Lcom/baidu/platform/comapi/util/PermissionCheck;->b:Landroid/content/Context;

    sget-object v0, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/util/PermissionCheck;->d:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/platform/comapi/util/PermissionCheck;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/util/PermissionCheck;->d:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    :cond_1
    sget-object v0, Lcom/baidu/platform/comapi/util/PermissionCheck;->e:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/baidu/platform/comapi/util/PermissionCheck$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/util/PermissionCheck$a;-><init>(Lcom/baidu/platform/comapi/util/PermissionCheck$1;)V

    sput-object v0, Lcom/baidu/platform/comapi/util/PermissionCheck;->e:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

    :cond_2
    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p0, "auth info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/baidu/platform/comapi/util/PermissionCheck;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/platform/comapi/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->a()Landroid/os/Bundle;

    move-result-object p0

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "mb"

    const-string v4, "mb"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "os"

    const-string v4, "os"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "sv"

    const-string v4, "sv"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "imt"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "net"

    const-string v4, "net"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "cpu"

    const-string v4, "cpu"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "glr"

    const-string v4, "glr"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "glv"

    const-string v4, "glv"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "resid"

    const-string v4, "resid"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "appid"

    const-string v4, "-1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "ver"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "screen"

    const-string v4, "(%d,%d)"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "screen_x"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "screen_y"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v3, "dpi"

    const-string v4, "(%d,%d)"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "dpi_x"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "dpi_y"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v2, "pcn"

    const-string v3, "pcn"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v2, "cuid"

    const-string v3, "cuid"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    const-string v1, "name"

    invoke-virtual {p0, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized permissionCheck()I
    .locals 6

    const-class v0, Lcom/baidu/platform/comapi/util/PermissionCheck;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/platform/comapi/util/PermissionCheck;->d:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/baidu/platform/comapi/util/PermissionCheck;->e:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/baidu/platform/comapi/util/PermissionCheck;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/baidu/platform/comapi/util/PermissionCheck;->d:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    const-string v3, "lbs_androidsdk"

    sget-object v4, Lcom/baidu/platform/comapi/util/PermissionCheck;->c:Ljava/util/Hashtable;

    sget-object v5, Lcom/baidu/platform/comapi/util/PermissionCheck;->e:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->authenticate(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setPermissionCheckResultListener(Lcom/baidu/platform/comapi/util/PermissionCheck$c;)V
    .locals 0

    sput-object p0, Lcom/baidu/platform/comapi/util/PermissionCheck;->f:Lcom/baidu/platform/comapi/util/PermissionCheck$c;

    return-void
.end method
