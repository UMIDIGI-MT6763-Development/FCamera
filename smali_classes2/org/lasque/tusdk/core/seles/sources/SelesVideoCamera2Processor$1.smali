.class Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->switchFilter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;Ljava/lang/String;)V

    return-void
.end method
