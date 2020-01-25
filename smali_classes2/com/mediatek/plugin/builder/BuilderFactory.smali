.class public Lcom/mediatek/plugin/builder/BuilderFactory;
.super Ljava/lang/Object;
.source "BuilderFactory.java"


# static fields
.field public static sBuilders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/builder/Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/plugin/builder/BuilderFactory;->sBuilders:Ljava/util/HashMap;

    new-instance v0, Lcom/mediatek/plugin/builder/ParameterBuilder;

    invoke-direct {v0}, Lcom/mediatek/plugin/builder/ParameterBuilder;-><init>()V

    invoke-static {v0}, Lcom/mediatek/plugin/builder/BuilderFactory;->registerBuilder(Lcom/mediatek/plugin/builder/Builder;)V

    new-instance v0, Lcom/mediatek/plugin/builder/ParameterDefBuilder;

    invoke-direct {v0}, Lcom/mediatek/plugin/builder/ParameterDefBuilder;-><init>()V

    invoke-static {v0}, Lcom/mediatek/plugin/builder/BuilderFactory;->registerBuilder(Lcom/mediatek/plugin/builder/Builder;)V

    new-instance v0, Lcom/mediatek/plugin/builder/ExtensionBuilder;

    invoke-direct {v0}, Lcom/mediatek/plugin/builder/ExtensionBuilder;-><init>()V

    invoke-static {v0}, Lcom/mediatek/plugin/builder/BuilderFactory;->registerBuilder(Lcom/mediatek/plugin/builder/Builder;)V

    new-instance v0, Lcom/mediatek/plugin/builder/ExtensionPointBuilder;

    invoke-direct {v0}, Lcom/mediatek/plugin/builder/ExtensionPointBuilder;-><init>()V

    invoke-static {v0}, Lcom/mediatek/plugin/builder/BuilderFactory;->registerBuilder(Lcom/mediatek/plugin/builder/Builder;)V

    new-instance v0, Lcom/mediatek/plugin/builder/PluginDescriptorBuilder;

    invoke-direct {v0}, Lcom/mediatek/plugin/builder/PluginDescriptorBuilder;-><init>()V

    invoke-static {v0}, Lcom/mediatek/plugin/builder/BuilderFactory;->registerBuilder(Lcom/mediatek/plugin/builder/Builder;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuilder(Ljava/lang/String;)Lcom/mediatek/plugin/builder/Builder;
    .locals 1

    sget-object v0, Lcom/mediatek/plugin/builder/BuilderFactory;->sBuilders:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mediatek/plugin/builder/Builder;

    return-object p0
.end method

.method private static registerBuilder(Lcom/mediatek/plugin/builder/Builder;)V
    .locals 2

    sget-object v0, Lcom/mediatek/plugin/builder/BuilderFactory;->sBuilders:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mediatek/plugin/builder/Builder;->getSupportedTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
