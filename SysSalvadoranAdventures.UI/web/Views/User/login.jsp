<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Login</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class=" bg-gradient-to-tr 
        from-slate-900 
        via-indigo-900 
        to-violet-500  
        bg-fixed 
        h-screen 
        blur-2xl
        hover:blur-none
        duration-500
        bg-repeat
        lg:w-4/12 
        md:3/12 
        sm:4/12 
        w-11/12 
        m-auto 
        my-10 
        shadow-md">
        
        <div 
        id="Animation-Show" 
        class="
            py-8 
            px-8 
            rounded-xl 
            my-auto
            backdrop-brightness-200 
            duration-500
            bg-white/20
            animate-pulse
            hover:bg-gradient-to-b
            hover:from-gray-100
            hover:via-gray-200
            hover:to-gray-400
            hover:animate-none
            ">
        <h1 class="
            font-medium 
            text-3xl 
            mt-3 
            text-center 
            bg-clip-text 
            text-transparent 
            bg-gradient-to-b
            from-fuchsia-400 
            via-purple-500
            to-violet-800">
            Login
        </h1>
        <form action="User?accion=login" method="post" class="mt-6">
            <div class="my-5 text-sm">
                <input type="hidden" name="accion" value="<%=request.getAttribute("accion")%>"> 
                <input type="text" autofocus name="login" id="Usuario" class="
                    focus:drop-shadow-2xl 
                    rounded-lg 
                    px-4 
                    py-3 
                    mt-3 
                    focus:outline-none 
                    bg-gray-100 
                    w-full 
                    text-gray-400  
                    delay-150 
                    duration-200  
                    border-b-2 
                    border-fuchsia-700 
                    hover:border-b-4 
                    hover:border-fuchsia-500 
                    hover:text-violet-400 
                    hover:-translate-y-1 
                    hover:scale-105
                    " placeholder="Usuario" /></div>
            <div class="my-5 text-sm">
                <input type="password" id="password" class="
                    focus:drop-shadow-2xl 
                    rounded-lg 
                    px-4 
                    py-3 
                    mt-3 
                    focus:outline-none 
                    bg-gray-100 
                    w-full 
                    text-gray-400  
                    delay-150 
                    duration-200  
                    border-b-2 
                    border-fuchsia-700 
                    hover:border-b-4 
                    hover:border-fuchsia-500 
                    hover:text-violet-400 
                    hover:-translate-y-1 
                    hover:scale-105" 
                    name="password"
                    placeholder="Password" />
                <div class="flex justify-end mt-2 text-xs text-gray-600">
                   <a href="../../pages/auth/forget_password.html hover:text-black">Forget Password?</a>
                </div>
            </div>

            <button class="
                block 
                rounded-lg
                text-center 
                text-white 
                bg-gradient-to-b
                from-teal-400
                via-cyan-600
                to-sky-700 
                p-3 
                duration-300 
                hover:bg-black
                hover:invert 
                w-full"
                type="sutmit">
                Login
            </button>
            <% if (request.getAttribute("error") != null) { %>
                    <span style="color:red"><%= request.getAttribute("error") %></span>                                              
            <%}%>
        </form>
                

        <p class="
            mt-12 
            text-xs 
            text-center 
            font-light 
            text-white"> 
            Aun no tienes cuenta? 
            <a href="User?accion=create" class="text-black font-medium"> Crear</a>  </p> 

    </div>
<!--        <main class="container">
        
            <form action="User?accion=login" method="post" class="form">
                <input type="hidden" name="accion" value="<%=request.getAttribute("accion")%>"> 
                
                <div class="row">
                    <div class="input-field col l5 s12">                                             
                        <i class="material-icons prefix">account_circle</i>
                        <input  id="txtLogin" type="text" name="login" required class="validate" maxlength="25">  
                        <label for="txtLogin">Login</label>
                    </div>                                       
                </div>
                <div class="row">
                    <div class="input-field col l5 s12">                                             
                        <i class="material-icons prefix">enhanced_encryption</i>
                        <input  id="txtPassword" type="password" name="password" required class="validate" minlength="5" maxlength="32">  
                        <label for="txtPassword">Password</label>
                    </div>                                       
                </div>
                <div class="row">
                    <div class="col l12 s12">
                        <button type="sutmit" class="waves-effect waves-light btn blue"><i class="material-icons right">send</i>Login</button>                                               
                    </div>
                </div>
                <% if (request.getAttribute("error") != null) { %>
                <div class="row">
                    <div class="col l12 s12">
                        <span style="color:red"><%= request.getAttribute("error") %></span>                                              
                    </div>
                </div>
                <%}%>
            </form>          
    </main>
-->


    </body>
</html>
