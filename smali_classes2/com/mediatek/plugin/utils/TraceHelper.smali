.class public Lcom/mediatek/plugin/utils/TraceHelper;
.super Ljava/lang/Object;
.source "TraceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginManager/TraceHelper"

.field private static sHasCheck:Z = false

.field private static sSupportTrace:Z

.field private static sTraceBeginMethod:Ljava/lang/reflect/Method;

.field private static sTraceEndMethod:Ljava/lang/reflect/Method;

.field private static sViewTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/mediatek/plugin/utils/TraceHelper;->sSupportTrace:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->checkWhetherSupport()V

    sget-object v0, Lcom/mediatek/plugin/utils/TraceHelper;->sTraceBeginMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/mediatek/plugin/utils/TraceHelper;->sTraceEndMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Lcom/mediatek/plugin/utils/TraceHelper;->sViewTag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PluginManager/TraceHelper"

    const-string v1, "<beginSection> InvocationTargetException"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "PluginManager/TraceHelper"

    const-string v1, "<beginSection> IllegalAccessException"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/mediatek/plugin/utils/TraceHelper;->sSupportTrace:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static checkWhetherSupport()V
    .locals 6

    sget-boolean v0, Lcom/mediatek/plugin/utils/TraceHelper;->sHasCheck:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/mediatek/plugin/utils/TraceHelper;->sSupportTrace:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sput-boolean v1, Lcom/mediatek/plugin/utils/TraceHelper;->sHasCheck:Z

    return-void

    :cond_1
    :try_start_0
    const-class v0, Landroid/os/Trace;

    const-string v2, "traceBegin"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/plugin/utils/TraceHelper;->sTraceBeginMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/mediatek/plugin/utils/TraceHelper;->sTraceBeginMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v0, Landroid/os/Trace;

    const-string v2, "traceEnd"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/plugin/utils/TraceHelper;->sTraceEndMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/mediatek/plugin/utils/TraceHelper;->sTraceEndMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v0, Landroid/os/Trace;

    const-string v2, "TRACE_TAG_VIEW"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    sput-wide v2, Lcom/mediatek/plugin/utils/TraceHelper;->sViewTag:J
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PluginManager/TraceHelper"

    const-string v3, "<checkWhetherSupport> IllegalAccessException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "PluginManager/TraceHelper"

    const-string v3, "<checkWhetherSupport> NoSuchFieldException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "PluginManager/TraceHelper"

    const-string v3, "<checkWhetherSupport> NoSuchMethodException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v1, Lcom/mediatek/plugin/utils/TraceHelper;->sHasCheck:Z

    return-void
.end method

.method public static endSection()V
    .locals 6

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->checkWhetherSupport()V

    sget-object v0, Lcom/mediatek/plugin/utils/TraceHelper;->sTraceBeginMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/plugin/utils/TraceHelper;->sTraceEndMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Lcom/mediatek/plugin/utils/TraceHelper;->sViewTag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PluginManager/TraceHelper"

    const-string v2, "<endSection> InvocationTargetException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "PluginManager/TraceHelper"

    const-string v2, "<endSection> IllegalAccessException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/mediatek/plugin/utils/TraceHelper;->sSupportTrace:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    :goto_0
    return-void
.end method
