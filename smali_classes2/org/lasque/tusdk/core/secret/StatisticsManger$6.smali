.class Lorg/lasque/tusdk/core/secret/StatisticsManger$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/secret/StatisticsManger;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lorg/lasque/tusdk/core/secret/StatisticsManger;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/secret/StatisticsManger;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$6;->b:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    iput-object p2, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$6;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$6;->b:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$6;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger;Ljava/util/List;)V

    return-void
.end method
