.class Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljavax/microedition/khronos/egl/EGLContext;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$1;->b:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$1;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$1;->b:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$1;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->a(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method
