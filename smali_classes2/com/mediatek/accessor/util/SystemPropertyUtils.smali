.class public Lcom/mediatek/accessor/util/SystemPropertyUtils;
.super Ljava/lang/Object;
.source "SystemPropertyUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sGetIntMethod:Ljava/lang/reflect/Method;

.field private static sGetMethod:Ljava/lang/reflect/Method;

.field private static sHasChecked:Z

.field private static sIsSystemPropertiesExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/util/SystemPropertyUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/util/SystemPropertyUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sIsSystemPropertiesExist:Z

    sput-boolean v0, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sHasChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/mediatek/accessor/util/SystemPropertyUtils;->isSystemPropertiesExist()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sGetMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0

    :catch_1
    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 4

    invoke-static {}, Lcom/mediatek/accessor/util/SystemPropertyUtils;->isSystemPropertiesExist()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sGetIntMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1

    :catch_1
    return p1

    :cond_0
    return p1
.end method

.method private static isSystemPropertiesExist()Z
    .locals 6

    sget-boolean v0, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sHasChecked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Lcom/mediatek/accessor/util/SystemPropertyUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "android.os.SystemProperties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sGetIntMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sGetIntMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v3, "get"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sGetMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sGetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sput-boolean v2, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sIsSystemPropertiesExist:Z

    sput-boolean v1, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sHasChecked:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mediatek/accessor/util/SystemPropertyUtils;->TAG:Ljava/lang/String;

    const-string v2, "<isSystemPropertiesExist> NoSuchMethodException"

    invoke-static {v1, v2, v0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    sput-boolean v0, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sIsSystemPropertiesExist:Z

    sput-boolean v1, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sHasChecked:Z

    :cond_1
    :goto_1
    sget-boolean v0, Lcom/mediatek/accessor/util/SystemPropertyUtils;->sIsSystemPropertiesExist:Z

    return v0
.end method
