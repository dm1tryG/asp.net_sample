using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace asp_sharp_intro
{
    public class ResponseRepository
    {
        private static ResponseRepository repository = new
       ResponseRepository();
        private List<Models.GuestResponse> responses = new List<Models.GuestResponse>();
        public static ResponseRepository GetRepository()
        {
            return repository;
        }
        public IEnumerable<Models.GuestResponse> GetAllResponses()
        {
            return responses;
        }
        public void AddResponse(Models.GuestResponse response)
        {
            responses.Add(response);
        }
    }
}