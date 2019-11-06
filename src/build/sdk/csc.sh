#!/bin/bash

set -o errexit -o nounset

export PATH="/dotnet/src/platform/corert/bin/Linux.x64.Debug/tools:$PATH"

mkdir -p /dotnet/src/sdk/csc
cp -r /dotnet/src/sdk/roslyn/artifacts/bin/csc/Debug/netcoreapp2.1/* /dotnet/src/sdk/csc

ilc /dotnet/src/sdk/csc/csc.dll -o:/dotnet/src/sdk/csc/csc.o \
  -r:/dotnet/src/sdk/csc/Microsoft.CodeAnalysis.dll \
  -r:/dotnet/src/sdk/csc/Microsoft.CodeAnalysis.CSharp.dll \
  -r:/dotnet/dist/rt/framework/Microsoft.CSharp.dll \
  -r:/dotnet/dist/rt/framework/Microsoft.VisualBasic.Core.dll \
  -r:/dotnet/dist/rt/framework/Microsoft.VisualBasic.dll \
  -r:/dotnet/dist/rt/framework/Microsoft.Win32.Primitives.dll \
  -r:/dotnet/dist/rt/framework/Microsoft.Win32.Registry.dll \
  -r:/dotnet/dist/rt/framework/mscorlib.dll \
  -r:/dotnet/dist/rt/framework/netstandard.dll \
  -r:/dotnet/dist/rt/framework/System.AppContext.dll \
  -r:/dotnet/dist/rt/framework/System.Buffers.dll \
  -r:/dotnet/dist/rt/framework/System.Collections.Concurrent.dll \
  -r:/dotnet/dist/rt/framework/System.Collections.dll \
  -r:/dotnet/dist/rt/framework/System.Collections.Immutable.dll \
  -r:/dotnet/dist/rt/framework/System.Collections.NonGeneric.dll \
  -r:/dotnet/dist/rt/framework/System.Collections.Specialized.dll \
  -r:/dotnet/dist/rt/framework/System.ComponentModel.Annotations.dll \
  -r:/dotnet/dist/rt/framework/System.ComponentModel.DataAnnotations.dll \
  -r:/dotnet/dist/rt/framework/System.ComponentModel.dll \
  -r:/dotnet/dist/rt/framework/System.ComponentModel.EventBasedAsync.dll \
  -r:/dotnet/dist/rt/framework/System.ComponentModel.Primitives.dll \
  -r:/dotnet/dist/rt/framework/System.ComponentModel.TypeConverter.dll \
  -r:/dotnet/dist/rt/framework/System.Configuration.dll \
  -r:/dotnet/dist/rt/framework/System.Console.dll \
  -r:/dotnet/dist/rt/framework/System.Core.dll \
  -r:/dotnet/dist/rt/framework/System.Data.Common.dll \
  -r:/dotnet/dist/rt/framework/System.Data.DataSetExtensions.dll \
  -r:/dotnet/dist/rt/framework/System.Data.dll \
  -r:/dotnet/dist/rt/framework/System.Diagnostics.Contracts.dll \
  -r:/dotnet/dist/rt/framework/System.Diagnostics.Debug.dll \
  -r:/dotnet/dist/rt/framework/System.Diagnostics.DiagnosticSource.dll \
  -r:/dotnet/dist/rt/framework/System.Diagnostics.FileVersionInfo.dll \
  -r:/dotnet/dist/rt/framework/System.Diagnostics.Process.dll \
  -r:/dotnet/dist/rt/framework/System.Diagnostics.StackTrace.dll \
  -r:/dotnet/dist/rt/framework/System.Diagnostics.TextWriterTraceListener.dll \
  -r:/dotnet/dist/rt/framework/System.Diagnostics.Tools.dll \
  -r:/dotnet/dist/rt/framework/System.Diagnostics.TraceSource.dll \
  -r:/dotnet/dist/rt/framework/System.Diagnostics.Tracing.dll \
  -r:/dotnet/dist/rt/framework/System.dll \
  -r:/dotnet/dist/rt/framework/System.Drawing.dll \
  -r:/dotnet/dist/rt/framework/System.Drawing.Primitives.dll \
  -r:/dotnet/dist/rt/framework/System.Dynamic.Runtime.dll \
  -r:/dotnet/dist/rt/framework/System.Globalization.Calendars.dll \
  -r:/dotnet/dist/rt/framework/System.Globalization.dll \
  -r:/dotnet/dist/rt/framework/System.Globalization.Extensions.dll \
  -r:/dotnet/dist/rt/framework/System.IO.Compression.Brotli.dll \
  -r:/dotnet/dist/rt/framework/System.IO.Compression.dll \
  -r:/dotnet/dist/rt/framework/System.IO.Compression.FileSystem.dll \
  -r:/dotnet/dist/rt/framework/System.IO.Compression.ZipFile.dll \
  -r:/dotnet/dist/rt/framework/System.IO.dll \
  -r:/dotnet/dist/rt/framework/System.IO.FileSystem.AccessControl.dll \
  -r:/dotnet/dist/rt/framework/System.IO.FileSystem.dll \
  -r:/dotnet/dist/rt/framework/System.IO.FileSystem.DriveInfo.dll \
  -r:/dotnet/dist/rt/framework/System.IO.FileSystem.Primitives.dll \
  -r:/dotnet/dist/rt/framework/System.IO.FileSystem.Watcher.dll \
  -r:/dotnet/dist/rt/framework/System.IO.IsolatedStorage.dll \
  -r:/dotnet/dist/rt/framework/System.IO.MemoryMappedFiles.dll \
  -r:/dotnet/dist/rt/framework/System.IO.Pipes.AccessControl.dll \
  -r:/dotnet/dist/rt/framework/System.IO.Pipes.dll \
  -r:/dotnet/dist/rt/framework/System.IO.UnmanagedMemoryStream.dll \
  -r:/dotnet/dist/rt/framework/System.Linq.dll \
  -r:/dotnet/dist/rt/framework/System.Linq.Expressions.dll \
  -r:/dotnet/dist/rt/framework/System.Linq.Parallel.dll \
  -r:/dotnet/dist/rt/framework/System.Linq.Queryable.dll \
  -r:/dotnet/dist/rt/framework/System.Memory.dll \
  -r:/dotnet/dist/rt/framework/System.Net.dll \
  -r:/dotnet/dist/rt/framework/System.Net.Http.dll \
  -r:/dotnet/dist/rt/framework/System.Net.HttpListener.dll \
  -r:/dotnet/dist/rt/framework/System.Net.Mail.dll \
  -r:/dotnet/dist/rt/framework/System.Net.NameResolution.dll \
  -r:/dotnet/dist/rt/framework/System.Net.NetworkInformation.dll \
  -r:/dotnet/dist/rt/framework/System.Net.Ping.dll \
  -r:/dotnet/dist/rt/framework/System.Net.Primitives.dll \
  -r:/dotnet/dist/rt/framework/System.Net.Requests.dll \
  -r:/dotnet/dist/rt/framework/System.Net.Security.dll \
  -r:/dotnet/dist/rt/framework/System.Net.ServicePoint.dll \
  -r:/dotnet/dist/rt/framework/System.Net.Sockets.dll \
  -r:/dotnet/dist/rt/framework/System.Net.WebClient.dll \
  -r:/dotnet/dist/rt/framework/System.Net.WebHeaderCollection.dll \
  -r:/dotnet/dist/rt/framework/System.Net.WebProxy.dll \
  -r:/dotnet/dist/rt/framework/System.Net.WebSockets.Client.dll \
  -r:/dotnet/dist/rt/framework/System.Net.WebSockets.dll \
  -r:/dotnet/dist/rt/framework/System.Numerics.dll \
  -r:/dotnet/dist/rt/framework/System.Numerics.Vectors.dll \
  -r:/dotnet/dist/rt/framework/System.ObjectModel.dll \
  -r:/dotnet/dist/rt/framework/System.Private.DataContractSerialization.dll \
  -r:/dotnet/dist/rt/framework/System.Private.Reflection.Metadata.Ecma335.dll \
  -r:/dotnet/dist/rt/framework/System.Private.Uri.dll \
  -r:/dotnet/dist/rt/framework/System.Private.Xml.dll \
  -r:/dotnet/dist/rt/framework/System.Private.Xml.Linq.dll \
  -r:/dotnet/dist/rt/framework/System.Reflection.DispatchProxy.dll \
  -r:/dotnet/dist/rt/framework/System.Reflection.dll \
  -r:/dotnet/dist/rt/framework/System.Reflection.Emit.dll \
  -r:/dotnet/dist/rt/framework/System.Reflection.Emit.ILGeneration.dll \
  -r:/dotnet/dist/rt/framework/System.Reflection.Emit.Lightweight.dll \
  -r:/dotnet/dist/rt/framework/System.Reflection.Extensions.dll \
  -r:/dotnet/dist/rt/framework/System.Reflection.Metadata.dll \
  -r:/dotnet/dist/rt/framework/System.Reflection.Primitives.dll \
  -r:/dotnet/dist/rt/framework/System.Reflection.TypeExtensions.dll \
  -r:/dotnet/dist/rt/framework/System.Resources.Reader.dll \
  -r:/dotnet/dist/rt/framework/System.Resources.ResourceManager.dll \
  -r:/dotnet/dist/rt/framework/System.Resources.Writer.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.CompilerServices.Unsafe.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.CompilerServices.VisualC.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.Extensions.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.Handles.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.InteropServices.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.InteropServices.RuntimeInformation.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.Intrinsics.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.Loader.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.Numerics.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.Serialization.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.Serialization.Formatters.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.Serialization.Json.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.Serialization.Primitives.dll \
  -r:/dotnet/dist/rt/framework/System.Runtime.Serialization.Xml.dll \
  -r:/dotnet/dist/rt/framework/System.Security.AccessControl.dll \
  -r:/dotnet/dist/rt/framework/System.Security.Claims.dll \
  -r:/dotnet/dist/rt/framework/System.Security.Cryptography.Algorithms.dll \
  -r:/dotnet/dist/rt/framework/System.Security.Cryptography.Cng.dll \
  -r:/dotnet/dist/rt/framework/System.Security.Cryptography.Csp.dll \
  -r:/dotnet/dist/rt/framework/System.Security.Cryptography.Encoding.dll \
  -r:/dotnet/dist/rt/framework/System.Security.Cryptography.OpenSsl.dll \
  -r:/dotnet/dist/rt/framework/System.Security.Cryptography.Primitives.dll \
  -r:/dotnet/dist/rt/framework/System.Security.Cryptography.X509Certificates.dll \
  -r:/dotnet/dist/rt/framework/System.Security.dll \
  -r:/dotnet/dist/rt/framework/System.Security.Principal.dll \
  -r:/dotnet/dist/rt/framework/System.Security.Principal.Windows.dll \
  -r:/dotnet/dist/rt/framework/System.Security.SecureString.dll \
  -r:/dotnet/dist/rt/framework/System.ServiceModel.Web.dll \
  -r:/dotnet/dist/rt/framework/System.ServiceProcess.dll \
  -r:/dotnet/dist/rt/framework/System.Text.Encoding.CodePages.dll \
  -r:/dotnet/dist/rt/framework/System.Text.Encoding.dll \
  -r:/dotnet/dist/rt/framework/System.Text.Encoding.Extensions.dll \
  -r:/dotnet/dist/rt/framework/System.Text.Encodings.Web.dll \
  -r:/dotnet/dist/rt/framework/System.Text.Json.dll \
  -r:/dotnet/dist/rt/framework/System.Text.RegularExpressions.dll \
  -r:/dotnet/dist/rt/framework/System.Threading.Channels.dll \
  -r:/dotnet/dist/rt/framework/System.Threading.dll \
  -r:/dotnet/dist/rt/framework/System.Threading.Overlapped.dll \
  -r:/dotnet/dist/rt/framework/System.Threading.Tasks.Dataflow.dll \
  -r:/dotnet/dist/rt/framework/System.Threading.Tasks.dll \
  -r:/dotnet/dist/rt/framework/System.Threading.Tasks.Extensions.dll \
  -r:/dotnet/dist/rt/framework/System.Threading.Tasks.Parallel.dll \
  -r:/dotnet/dist/rt/framework/System.Threading.Thread.dll \
  -r:/dotnet/dist/rt/framework/System.Threading.ThreadPool.dll \
  -r:/dotnet/dist/rt/framework/System.Threading.Timer.dll \
  -r:/dotnet/dist/rt/framework/System.Transactions.dll \
  -r:/dotnet/dist/rt/framework/System.Transactions.Local.dll \
  -r:/dotnet/dist/rt/framework/System.ValueTuple.dll \
  -r:/dotnet/dist/rt/framework/System.Web.dll \
  -r:/dotnet/dist/rt/framework/System.Web.HttpUtility.dll \
  -r:/dotnet/dist/rt/framework/System.Windows.dll \
  -r:/dotnet/dist/rt/framework/System.Xml.dll \
  -r:/dotnet/dist/rt/framework/System.Xml.Linq.dll \
  -r:/dotnet/dist/rt/framework/System.Xml.ReaderWriter.dll \
  -r:/dotnet/dist/rt/framework/System.Xml.Serialization.dll \
  -r:/dotnet/dist/rt/framework/System.Xml.XDocument.dll \
  -r:/dotnet/dist/rt/framework/System.Xml.XmlDocument.dll \
  -r:/dotnet/dist/rt/framework/System.Xml.XmlSerializer.dll \
  -r:/dotnet/dist/rt/framework/System.Xml.XPath.dll \
  -r:/dotnet/dist/rt/framework/System.Xml.XPath.XDocument.dll \
  -r:/dotnet/dist/rt/framework/WindowsBase.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.CoreLib.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.DeveloperExperience.Console.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.DisabledReflection.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.Interop.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.Interop.Experimental.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.Interpreter.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.Jit.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.Reflection.Core.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.Reflection.Core.Experimental.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.Reflection.Execution.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.Reflection.Execution.Experimental.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.Reflection.Metadata.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.StackTraceGenerator.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.StackTraceMetadata.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.StackTraceMetadata.Experimental.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.TypeLoader.dll \
  -r:/dotnet/dist/rt/sdk/System.Private.TypeLoader.Experimental.dll \
  -g \
  --initassembly:System.Private.CoreLib \
  --initassembly:System.Private.DeveloperExperience.Console \
  --initassembly:System.Private.StackTraceMetadata \
  --initassembly:System.Private.TypeLoader \
  --initassembly:System.Private.Reflection.Execution \
  --initassembly:System.Private.Interop \
  --completetypemetadata \
  --stacktracedata \
  --rootallapplicationassemblies \
  --scanreflection \
  --singlethreaded \
  --removefeature:CurlHandler

clang-3.9 /dotnet/src/sdk/csc/csc.o -o /dotnet/src/sdk/csc/csc \
  /dotnet/dist/rt/sdk/libbootstrapper.a \
  /dotnet/dist/rt/sdk/libRuntime.a \
  /dotnet/dist/rt/sdk/libSystem.Private.CoreLib.Native.a \
  /dotnet/dist/rt/sdk/libSystem.Private.TypeLoader.Native.a \
  /dotnet/dist/rt/framework/System.Native.a \
  /dotnet/dist/rt/framework/System.Net.Http.Native.a \
  /dotnet/dist/rt/framework/System.Globalization.Native.a \
  /dotnet/dist/rt/framework/System.IO.Compression.Native.a \
  /dotnet/dist/rt/framework/System.Net.Security.Native.a \
  /dotnet/dist/rt/framework/System.Security.Cryptography.Native.OpenSsl.a \
  -g \
  -Wl,--as-needed \
  -pthread \
  -lstdc++ \
  -ldl \
  -lm \
  -lz \
  -lgssapi_krb5 \
  -lrt

cp /dotnet/src/sdk/csc/csc /dotnet/dist
