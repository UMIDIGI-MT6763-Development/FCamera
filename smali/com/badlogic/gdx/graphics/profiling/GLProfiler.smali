.class public abstract Lcom/badlogic/gdx/graphics/profiling/GLProfiler;
.super Ljava/lang/Object;
.source "GLProfiler.java"


# static fields
.field public static calls:I

.field public static drawCalls:I

.field public static shaderSwitches:I

.field public static textureBindings:I

.field public static vertexCount:Lcom/badlogic/gdx/math/FloatCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/math/FloatCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    check-cast v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    check-cast v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    check-cast v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    :cond_2
    return-void
.end method

.method public static enable()V
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;-><init>(Lcom/badlogic/gdx/graphics/GL30;)V

    :goto_0
    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;-><init>(Lcom/badlogic/gdx/graphics/GL20;)V

    :goto_1
    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    :cond_2
    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->calls:I

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->textureBindings:I

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->drawCalls:I

    sput v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->shaderSwitches:I

    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    return-void
.end method
