.class Lorg/lasque/tusdk/core/seles/filters/SelesFilter$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setSize(Lorg/lasque/tusdk/core/struct/TuSdkSizeF;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

.field final synthetic c:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;Lorg/lasque/tusdk/core/struct/TuSdkSizeF;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$4;->c:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$4;->b:Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$4;->c:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$4;->c:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$4;->b:Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

    iget-object v3, v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v1, v2, v0, v3}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setSize(Lorg/lasque/tusdk/core/struct/TuSdkSizeF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method
