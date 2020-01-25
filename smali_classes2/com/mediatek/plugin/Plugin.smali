.class public Lcom/mediatek/plugin/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mDescriptor:Lcom/mediatek/plugin/element/PluginDescriptor;


# direct methods
.method public constructor <init>(Lcom/mediatek/plugin/element/PluginDescriptor;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/plugin/Plugin;->mDescriptor:Lcom/mediatek/plugin/element/PluginDescriptor;

    iput-object p2, p0, Lcom/mediatek/plugin/Plugin;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 0

    return-void
.end method

.method protected doStop()V
    .locals 0

    return-void
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/Plugin;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/Plugin;->mDescriptor:Lcom/mediatek/plugin/element/PluginDescriptor;

    return-object v0
.end method

.method public start()V
    .locals 0

    invoke-virtual {p0}, Lcom/mediatek/plugin/Plugin;->doStart()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/mediatek/plugin/Plugin;->doStop()V

    return-void
.end method
