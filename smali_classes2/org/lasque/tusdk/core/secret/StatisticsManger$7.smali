.class Lorg/lasque/tusdk/core/secret/StatisticsManger$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/secret/StatisticsManger;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/secret/StatisticsManger;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$7;->a:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$7;->a:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->b(Lorg/lasque/tusdk/core/secret/StatisticsManger;Z)Z

    return-void
.end method
