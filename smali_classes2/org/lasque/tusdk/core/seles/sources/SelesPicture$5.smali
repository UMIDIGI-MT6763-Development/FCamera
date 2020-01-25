.class Lorg/lasque/tusdk/core/seles/sources/SelesPicture$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$5;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$5;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$5;->a:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->runPendingOnDrawTasks()V

    return-void
.end method
