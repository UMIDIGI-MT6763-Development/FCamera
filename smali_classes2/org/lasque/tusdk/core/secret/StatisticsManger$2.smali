.class Lorg/lasque/tusdk/core/secret/StatisticsManger$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/secret/StatisticsManger;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/ByteArrayInputStream;

.field final synthetic b:Lorg/lasque/tusdk/core/secret/StatisticsManger;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/secret/StatisticsManger;Ljava/io/ByteArrayInputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$2;->b:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    iput-object p2, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$2;->a:Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$2;->b:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$2;->a:Ljava/io/ByteArrayInputStream;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger;Ljava/io/InputStream;)V

    return-void
.end method
