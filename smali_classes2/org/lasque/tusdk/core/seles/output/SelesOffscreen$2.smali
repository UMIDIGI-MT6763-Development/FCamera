.class Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->newFrameReady(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;JI)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$2;->c:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    iput-wide p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$2;->a:J

    iput p4, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$2;->c:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    iget-wide v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$2;->a:J

    iget v3, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$2;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->asyncNewFrameReady(JI)V

    return-void
.end method
