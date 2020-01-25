.class public final Lcom/freeme/camera/common/reflect/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;,
        Lcom/freeme/camera/common/reflect/ReflectUtils$NULL;
    }
.end annotation


# instance fields
.field private final object:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/reflect/ReflectUtils;->type:Ljava/lang/Class;

    iput-object p2, p0, Lcom/freeme/camera/common/reflect/ReflectUtils;->object:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/reflect/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2
    return-object p1
.end method

.method private exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p1
.end method

.method private static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;

    invoke-direct {p1, p0}, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getAccessibleField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/freeme/camera/common/reflect/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;

    invoke-direct {p1, v1}, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private varargs getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Class;

    return-object p1

    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Class;

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    if-nez v2, :cond_1

    const-class v2, Lcom/freeme/camera/common/reflect/ReflectUtils$NULL;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->getAccessibleField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    :try_start_0
    const-class v0, Ljava/lang/reflect/Field;

    const-string v1, "modifiers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/freeme/camera/common/reflect/ReflectUtils;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    move v0, v2

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget-object v1, p2, v0

    const-class v3, Lcom/freeme/camera/common/reflect/ReflectUtils$NULL;

    if-eq v1, v3, :cond_1

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    aget-object v3, p2, v0

    invoke-direct {p0, v3}, Lcom/freeme/camera/common/reflect/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method private varargs method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/freeme/camera/common/reflect/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;

    invoke-direct {p2, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private varargs newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/freeme/camera/common/reflect/ReflectUtils;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/freeme/camera/common/reflect/ReflectUtils;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;

    invoke-direct {p2, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static reflect(Ljava/lang/Class;)Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/freeme/camera/common/reflect/ReflectUtils;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;
        }
    .end annotation

    new-instance v0, Lcom/freeme/camera/common/reflect/ReflectUtils;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/reflect/ReflectUtils;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static reflect(Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;
        }
    .end annotation

    new-instance v0, Lcom/freeme/camera/common/reflect/ReflectUtils;

    if-nez p0, :cond_0

    const-class v1, Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1, p0}, Lcom/freeme/camera/common/reflect/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static reflect(Ljava/lang/String;)Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;
        }
    .end annotation

    invoke-static {p0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object p0

    return-object p0
.end method

.method public static reflect(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object p0

    return-object p0
.end method

.method private similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-direct {p0, v6, p1, p2}, Lcom/freeme/camera/common/reflect/ReflectUtils;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->sortMethods(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    return-object p1

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    invoke-direct {p0, v6, p1, p2}, Lcom/freeme/camera/common/reflect/ReflectUtils;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->sortMethods(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    return-object p1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No similar method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with params "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could be found on type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sortConstructors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/freeme/camera/common/reflect/ReflectUtils$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/reflect/ReflectUtils$1;-><init>(Lcom/freeme/camera/common/reflect/ReflectUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortMethods(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/freeme/camera/common/reflect/ReflectUtils$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/reflect/ReflectUtils$2;-><init>(Lcom/freeme/camera/common/reflect/ReflectUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/reflect/ReflectUtils;->type:Ljava/lang/Class;

    return-object v0
.end method

.method private unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lcom/freeme/camera/common/reflect/ReflectUtils;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/freeme/camera/common/reflect/ReflectUtils;

    invoke-virtual {p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method private wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_1

    const-class p1, Ljava/lang/Boolean;

    return-object p1

    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_2

    const-class p1, Ljava/lang/Integer;

    return-object p1

    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_3

    const-class p1, Ljava/lang/Long;

    return-object p1

    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_4

    const-class p1, Ljava/lang/Short;

    return-object p1

    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_5

    const-class p1, Ljava/lang/Byte;

    return-object p1

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_6

    const-class p1, Ljava/lang/Double;

    return-object p1

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_7

    const-class p1, Ljava/lang/Float;

    return-object p1

    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_8

    const-class p1, Ljava/lang/Character;

    return-object p1

    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_9

    const-class p1, Ljava/lang/Void;

    return-object p1

    :cond_9
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/freeme/camera/common/reflect/ReflectUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/reflect/ReflectUtils;->object:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/reflect/ReflectUtils;

    invoke-virtual {p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public field(Ljava/lang/String;)Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/common/reflect/ReflectUtils;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/reflect/ReflectUtils;->object:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public field(Ljava/lang/String;Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/reflect/ReflectUtils;->object:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/freeme/camera/common/reflect/ReflectUtils;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;

    invoke-direct {p2, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/reflect/ReflectUtils;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/reflect/ReflectUtils;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public method(Ljava/lang/String;)Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object p1

    return-object p1
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/freeme/camera/common/reflect/ReflectUtils;->getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/reflect/ReflectUtils;->object:Ljava/lang/Object;

    invoke-direct {p0, v1, v2, p2}, Lcom/freeme/camera/common/reflect/ReflectUtils;->method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/reflect/ReflectUtils;->object:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/freeme/camera/common/reflect/ReflectUtils;->method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;

    invoke-direct {p2, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public newInstance()Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object v0

    return-object v0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;
    .locals 9

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v8, v0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/freeme/camera/common/reflect/ReflectUtils;->sortConstructors(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;

    invoke-direct {p1, v1}, Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/reflect/ReflectUtils;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
