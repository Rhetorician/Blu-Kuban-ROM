.class public Lcom/infraware/filemanager/define/FMDefine$CopyMode;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CopyMode"
.end annotation


# static fields
.field public static final COPY:I = 0x1

.field public static final MOVE:I = 0x2

.field public static final NONE:I


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$CopyMode;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method