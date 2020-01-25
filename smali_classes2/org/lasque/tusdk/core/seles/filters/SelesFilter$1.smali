.class Lorg/lasque/tusdk/core/seles/filters/SelesFilter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$1;->c:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    return-void
.end method
